# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-06-04 09:54:30.

require 'ads_common/savon_service'
require 'adwords_api/v201806/ad_service_registry'

module AdwordsApi; module V201806; module AdService
  class AdService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201806'
      super(config, endpoint, namespace, :v201806)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    private

    def get_service_registry()
      return AdServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201806::AdService
    end
  end
end; end; end
