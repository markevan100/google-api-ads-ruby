#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example demonstrates how to handle policy violation errors. To create
# an ad group, run add_ad_group.rb.

require 'adwords_api'

def handle_policy_violation_error(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Create text ad.
  text_ad_operation = {
    :operator => 'ADD',
    :operand => {
      :ad_group_id => ad_group_id,
      :ad => {
        # The 'xsi_type' field allows you to specify the xsi:type of the object
        # being created. It's only necessary when you must provide an explicit
        # type that the client library can't infer.
        :xsi_type => 'ExpandedTextAd',
        :headline_part1 => 'Mars Cruise!!!',
        :headline_part2 => 'Visit the Red Planet in style.',
        :description => 'Low-gravity fun for everyone!',
        :final_urls => ['http://www.example.com']
      }
    }
  }

  operations = [text_ad_operation]

  # Validate ad.
  begin
    # Enable "validate only" for the length of this block
    adwords.validate_only do
      ad_group_ad_srv.mutate(operations)
    end
    puts 'Validation successful, no errors returned.'
  rescue AdwordsApi::Errors::ApiException => e
    e.errors.each do |error|
      if error[:xsi_type] == 'PolicyViolationError'
        field_path_elements = error[:field_path_elements]
        first_field_path_element = nil
        unless field_path_elements.nil? || field_path_elements.length <= 0
          first_field_path_element = field_path_elements.first
        end
        if first_field_path_element.nil? ||
            'operations' != first_field_path_element[:field] ||
            first_field_path_element[:index].nil?
          # If the operation index is not present on the first error field path
          # element, then there's no way to determine which operation to
          # remove, so simply throw the exception.
          raise e
        end

        operation_index = first_field_path_element[:index]
        operation = operations[operation_index]
        process_api_error(error, operation)
        unless error[:is_exemptable]
          # Remove non-exemptable operation
          puts "Removing the operation from the request."
          operations.delete(operation)
        end
      else
        # Non-policy error returned, re-throw exception.
        raise e
      end
    end
  end

  # Add ads.
  if operations.size > 0
    response = ad_group_ad_srv.mutate(operations)
    if response and response[:value]
      ads = response[:value]
      puts "Added #{ads.length} ad(s) to ad group #{ad_group_id}."
      ads.each do |ad|
        puts "  Ad id is #{ad[:ad][:id]}, type is #{ad[:ad][:xsi_type]} and " +
            "status is \"#{ad[:status]}\"."
      end
    else
      puts "No ads were added."
    end
  end
end

# Checks the given error and performs the appropriate action based on whether it
# is an exemptable policy violation error.
def process_api_error(error, operation)
  is_exemptable = error[:is_exemptable]

  puts "Ad with headline '%s - %s' violated %s policy '%s'." %
      [operation[:operand][:ad][:headline_part1],
      operation[:operand][:ad][:headline_part2],
      is_exemptable ? 'exemptable' : 'non-exemptable',
      error[:external_policy_name]]

  if is_exemptable
    # Add exemption request to the operation.
    puts "Adding exemption request for policy name '%s' on text '%s'." %
        [error[:key][:policy_name], error[:key][:violating_text]]
    unless operation[:exemption_requests]
      operation[:exemption_requests] = []
    end
    operation[:exemption_requests] << {
      :key => error[:key]
    }
  end
end

if __FILE__ == $0
  API_VERSION = :v201806

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    handle_policy_violation_error(ad_group_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
    puts "Message: %s" % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
