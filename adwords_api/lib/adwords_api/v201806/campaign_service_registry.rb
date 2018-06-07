# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-06-04 09:54:50.

require 'adwords_api/errors'

module AdwordsApi; module V201806; module CampaignService
  class CampaignServiceRegistry
    CAMPAIGNSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CampaignPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"CampaignOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"CampaignReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :mutate_label=>{:input=>[{:name=>:operations, :type=>"CampaignLabelOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_label_response", :fields=>[{:name=>:rval, :type=>"CampaignLabelReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :query=>{:input=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"query_response", :fields=>[{:name=>:rval, :type=>"CampaignPage", :min_occurs=>0, :max_occurs=>1}]}}}
    CAMPAIGNSERVICE_TYPES = {:AdxError=>{:fields=>[{:name=>:reason, :type=>"AdxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :LabelAttribute=>{:fields=>[{:name=>:label_attribute_type, :original_name=>"LabelAttribute.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BiddingErrors=>{:fields=>[{:name=>:reason, :type=>"BiddingErrors.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BiddingScheme=>{:fields=>[{:name=>:bidding_scheme_type, :original_name=>"BiddingScheme.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BiddingStrategyConfiguration=>{:fields=>[{:name=>:bidding_strategy_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_type, :type=>"BiddingStrategyType", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_source, :type=>"BiddingStrategySource", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_scheme, :type=>"BiddingScheme", :min_occurs=>0, :max_occurs=>1}, {:name=>:bids, :type=>"Bids", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:target_roas_override, :type=>"double", :min_occurs=>0, :max_occurs=>1}]}, :Bids=>{:fields=>[{:name=>:bids_type, :original_name=>"Bids.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Budget=>{:fields=>[{:name=>:budget_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:amount, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivery_method, :type=>"Budget.BudgetDeliveryMethod", :min_occurs=>0, :max_occurs=>1}, {:name=>:reference_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_explicitly_shared, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"Budget.BudgetStatus", :min_occurs=>0, :max_occurs=>1}]}, :BudgetError=>{:fields=>[{:name=>:reason, :type=>"BudgetError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Campaign=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"CampaignStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:serving_status, :type=>"ServingStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:budget, :type=>"Budget", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_optimizer_eligibility, :type=>"ConversionOptimizerEligibility", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_serving_optimization_status, :type=>"AdServingOptimizationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:frequency_cap, :type=>"FrequencyCap", :min_occurs=>0, :max_occurs=>1}, {:name=>:settings, :type=>"Setting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:advertising_channel_type, :type=>"AdvertisingChannelType", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertising_channel_sub_type, :type=>"AdvertisingChannelSubType", :min_occurs=>0, :max_occurs=>1}, {:name=>:network_setting, :type=>"NetworkSetting", :min_occurs=>0, :max_occurs=>1}, {:name=>:labels, :type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:bidding_strategy_configuration, :type=>"BiddingStrategyConfiguration", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_trial_type, :type=>"CampaignTrialType", :min_occurs=>0, :max_occurs=>1}, {:name=>:base_campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:forward_compatibility_map, :type=>"String_StringMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:tracking_url_template, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:final_url_suffix, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:url_custom_parameters, :type=>"CustomParameters", :min_occurs=>0, :max_occurs=>1}, {:name=>:vanity_pharma, :type=>"VanityPharma", :min_occurs=>0, :max_occurs=>1}, {:name=>:selective_optimization, :type=>"SelectiveOptimization", :min_occurs=>0, :max_occurs=>1}]}, :CampaignError=>{:fields=>[{:name=>:reason, :type=>"CampaignError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CampaignLabel=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :CampaignLabelOperation=>{:fields=>[{:name=>:operand, :type=>"CampaignLabel", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :CampaignLabelReturnValue=>{:fields=>[{:name=>:value, :type=>"CampaignLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:partial_failure_errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :TextLabel=>{:fields=>[], :base=>"Label"}, :DisplayAttribute=>{:fields=>[{:name=>:background_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"LabelAttribute"}, :CampaignOperation=>{:fields=>[{:name=>:operand, :type=>"Campaign", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :CampaignPage=>{:fields=>[{:name=>:entries, :type=>"Campaign", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CampaignReturnValue=>{:fields=>[{:name=>:value, :type=>"Campaign", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:partial_failure_errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :CertificateDomainMismatchInCountryConstraint=>{:fields=>[], :base=>"CountryConstraint"}, :CertificateMissingConstraint=>{:fields=>[], :base=>"PolicyTopicConstraint"}, :CertificateMissingInCountryConstraint=>{:fields=>[], :base=>"CountryConstraint"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :original_name=>"ComparableValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ConversionOptimizerEligibility=>{:fields=>[{:name=>:eligible, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:rejection_reasons, :type=>"ConversionOptimizerEligibility.RejectionReason", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CountryConstraint=>{:fields=>[{:name=>:constrained_countries, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:total_targeted_countries, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"PolicyTopicConstraint"}, :CpaBid=>{:fields=>[{:name=>:bid, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_source, :type=>"BidSource", :min_occurs=>0, :max_occurs=>1}], :base=>"Bids"}, :CpcBid=>{:fields=>[{:name=>:bid, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:cpc_bid_source, :type=>"BidSource", :min_occurs=>0, :max_occurs=>1}], :base=>"Bids"}, :CpmBid=>{:fields=>[{:name=>:bid, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:cpm_bid_source, :type=>"BidSource", :min_occurs=>0, :max_occurs=>1}], :base=>"Bids"}, :CustomParameter=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_remove, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :CustomParameters=>{:fields=>[{:name=>:parameters, :type=>"CustomParameter", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:do_replace, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateRangeError=>{:fields=>[{:name=>:reason, :type=>"DateRangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :DynamicSearchAdsSetting=>{:fields=>[{:name=>:domain_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:language_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:use_supplied_urls_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_feed, :type=>"PageFeed", :min_occurs=>0, :max_occurs=>1}], :base=>"Setting"}, :EntityAccessDenied=>{:fields=>[{:name=>:reason, :type=>"EntityAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityCountLimitExceeded=>{:fields=>[{:name=>:reason, :type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:enclosing_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_limit_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:existing_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :ForwardCompatibilityError=>{:fields=>[{:name=>:reason, :type=>"ForwardCompatibilityError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FrequencyCap=>{:fields=>[{:name=>:impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_unit, :type=>"TimeUnit", :min_occurs=>0, :max_occurs=>1}, {:name=>:level, :type=>"Level", :min_occurs=>0, :max_occurs=>1}]}, :GeoTargetTypeSetting=>{:fields=>[{:name=>:positive_geo_target_type, :type=>"GeoTargetTypeSetting.PositiveGeoTargetType", :min_occurs=>0, :max_occurs=>1}, {:name=>:negative_geo_target_type, :type=>"GeoTargetTypeSetting.NegativeGeoTargetType", :min_occurs=>0, :max_occurs=>1}], :base=>"Setting"}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Label=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"Label.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:attribute, :type=>"LabelAttribute", :min_occurs=>0, :max_occurs=>1}, {:name=>:label_type, :original_name=>"Label.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ListError=>{:fields=>[{:name=>:reason, :type=>"ListError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ListOperations=>{:fields=>[{:name=>:clear, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:operators, :type=>"ListOperations.ListOperator", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :ManualCpcBiddingScheme=>{:fields=>[{:name=>:enhanced_cpc_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :ManualCpmBiddingScheme=>{:fields=>[{:name=>:viewable_cpm_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :MaximizeConversionValueBiddingScheme=>{:fields=>[{:name=>:target_roas, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :MaximizeConversionsBiddingScheme=>{:fields=>[], :base=>"BiddingScheme"}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue"}, :UniversalAppCampaignSetting=>{:fields=>[{:name=>:app_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_vendor, :type=>"MobileApplicationVendor", :min_occurs=>0, :max_occurs=>1}, {:name=>:description1, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description2, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description3, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description4, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:youtube_video_media_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:image_media_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:universal_app_bidding_strategy_goal_type, :type=>"UniversalAppBiddingStrategyGoalType", :min_occurs=>0, :max_occurs=>1}, {:name=>:youtube_video_media_ids_ops, :type=>"ListOperations", :min_occurs=>0, :max_occurs=>1}, {:name=>:image_media_ids_ops, :type=>"ListOperations", :min_occurs=>0, :max_occurs=>1}, {:name=>:ads_policy_decisions, :type=>"UniversalAppCampaignAdsPolicyDecisions", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Setting"}, :NetworkSetting=>{:fields=>[{:name=>:target_google_search, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_search_network, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_content_network, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_partner_search_network, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :NewEntityCreationError=>{:fields=>[{:name=>:reason, :type=>"NewEntityCreationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :PageFeed=>{:fields=>[{:name=>:feed_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :PageOnePromotedBiddingScheme=>{:fields=>[{:name=>:strategy_goal, :type=>"PageOnePromotedBiddingScheme.StrategyGoal", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_modifier, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_changes_for_raises_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_budget_constrained, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_low_quality_score, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :PolicyTopicConstraint=>{:fields=>[{:name=>:constraint_type, :type=>"PolicyTopicConstraint.PolicyTopicConstraintType", :min_occurs=>0, :max_occurs=>1}, {:name=>:policy_topic_constraint_type, :original_name=>"PolicyTopicConstraint.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :PolicyTopicEntry=>{:fields=>[{:name=>:policy_topic_entry_type, :type=>"PolicyTopicEntryType", :min_occurs=>0, :max_occurs=>1}, {:name=>:policy_topic_evidences, :type=>"PolicyTopicEvidence", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:policy_topic_constraints, :type=>"PolicyTopicConstraint", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:policy_topic_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:policy_topic_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:policy_topic_help_center_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :PolicyTopicEvidence=>{:fields=>[{:name=>:policy_topic_evidence_type, :type=>"PolicyTopicEvidenceType", :min_occurs=>0, :max_occurs=>1}, {:name=>:evidence_text_list, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:policy_topic_evidence_destination_mismatch_url_types, :type=>"PolicyTopicEvidenceDestinationMismatchUrlType", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :QueryError=>{:fields=>[{:name=>:reason, :type=>"QueryError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RealTimeBiddingSetting=>{:fields=>[{:name=>:opt_in, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Setting"}, :RegionCodeError=>{:fields=>[{:name=>:reason, :type=>"RegionCodeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ResellerConstraint=>{:fields=>[], :base=>"PolicyTopicConstraint"}, :SelectiveOptimization=>{:fields=>[{:name=>:conversion_type_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:conversion_type_ids_ops, :type=>"ListOperations", :min_occurs=>0, :max_occurs=>1}]}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Setting=>{:fields=>[{:name=>:setting_type, :original_name=>"Setting.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :SettingError=>{:fields=>[{:name=>:reason, :type=>"SettingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ShoppingSetting=>{:fields=>[{:name=>:merchant_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:sales_country, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_priority, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:enable_local, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Setting"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StatsQueryError=>{:fields=>[{:name=>:reason, :type=>"StatsQueryError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_StringMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TargetCpaBiddingScheme=>{:fields=>[{:name=>:target_cpa, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_cpc_bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_cpc_bid_floor, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetOutrankShareBiddingScheme=>{:fields=>[{:name=>:target_outrank_share, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:competitor_domain, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_cpc_bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_changes_for_raises_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_low_quality_score, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetingSettingDetail=>{:fields=>[{:name=>:criterion_type_group, :type=>"CriterionTypeGroup", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_all, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :TargetRoasBiddingScheme=>{:fields=>[{:name=>:target_roas, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_floor, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetSpendBiddingScheme=>{:fields=>[{:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:spend_target, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetingSetting=>{:fields=>[{:name=>:details, :type=>"TargetingSettingDetail", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Setting"}, :TrackingSetting=>{:fields=>[{:name=>:tracking_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Setting"}, :UniversalAppCampaignAdsPolicyDecisions=>{:fields=>[{:name=>:universal_app_campaign_asset, :type=>"UniversalAppCampaignAsset", :min_occurs=>0, :max_occurs=>1}, {:name=>:asset_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:policy_topic_entries, :type=>"PolicyTopicEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :UrlError=>{:fields=>[{:name=>:reason, :type=>"UrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :VanityPharma=>{:fields=>[{:name=>:vanity_pharma_display_url_mode, :type=>"VanityPharmaDisplayUrlMode", :min_occurs=>0, :max_occurs=>1}, {:name=>:vanity_pharma_text, :type=>"VanityPharmaText", :min_occurs=>0, :max_occurs=>1}]}, :AdServingOptimizationStatus=>{:fields=>[]}, :AdvertisingChannelSubType=>{:fields=>[]}, :AdvertisingChannelType=>{:fields=>[]}, :"AdxError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"AuthorizationError.Reason"=>{:fields=>[]}, :BidSource=>{:fields=>[]}, :"BiddingErrors.Reason"=>{:fields=>[]}, :BiddingStrategySource=>{:fields=>[]}, :BiddingStrategyType=>{:fields=>[]}, :"Budget.BudgetDeliveryMethod"=>{:fields=>[]}, :"Budget.BudgetStatus"=>{:fields=>[]}, :"BudgetError.Reason"=>{:fields=>[]}, :"CampaignError.Reason"=>{:fields=>[]}, :CampaignStatus=>{:fields=>[]}, :CampaignTrialType=>{:fields=>[]}, :"ClientTermsError.Reason"=>{:fields=>[]}, :"ConversionOptimizerEligibility.RejectionReason"=>{:fields=>[]}, :CriterionTypeGroup=>{:fields=>[]}, :"DatabaseError.Reason"=>{:fields=>[]}, :"DateError.Reason"=>{:fields=>[]}, :"DateRangeError.Reason"=>{:fields=>[]}, :"DistinctError.Reason"=>{:fields=>[]}, :"EntityAccessDenied.Reason"=>{:fields=>[]}, :"EntityCountLimitExceeded.Reason"=>{:fields=>[]}, :"EntityNotFound.Reason"=>{:fields=>[]}, :"ForwardCompatibilityError.Reason"=>{:fields=>[]}, :"GeoTargetTypeSetting.NegativeGeoTargetType"=>{:fields=>[]}, :"GeoTargetTypeSetting.PositiveGeoTargetType"=>{:fields=>[]}, :"IdError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"Label.Status"=>{:fields=>[]}, :Level=>{:fields=>[]}, :"ListError.Reason"=>{:fields=>[]}, :"ListOperations.ListOperator"=>{:fields=>[]}, :MobileApplicationVendor=>{:fields=>[]}, :"NewEntityCreationError.Reason"=>{:fields=>[]}, :"NotEmptyError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"OperationAccessDenied.Reason"=>{:fields=>[]}, :Operator=>{:fields=>[]}, :"OperatorError.Reason"=>{:fields=>[]}, :"PageOnePromotedBiddingScheme.StrategyGoal"=>{:fields=>[]}, :"PolicyTopicConstraint.PolicyTopicConstraintType"=>{:fields=>[]}, :PolicyTopicEntryType=>{:fields=>[]}, :PolicyTopicEvidenceDestinationMismatchUrlType=>{:fields=>[]}, :PolicyTopicEvidenceType=>{:fields=>[]}, :"Predicate.Operator"=>{:fields=>[]}, :"QueryError.Reason"=>{:fields=>[]}, :"QuotaCheckError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RateExceededError.Reason"=>{:fields=>[]}, :"ReadOnlyError.Reason"=>{:fields=>[]}, :"RegionCodeError.Reason"=>{:fields=>[]}, :"RejectedError.Reason"=>{:fields=>[]}, :"RequestError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"SelectorError.Reason"=>{:fields=>[]}, :ServingStatus=>{:fields=>[]}, :"SettingError.Reason"=>{:fields=>[]}, :"SizeLimitError.Reason"=>{:fields=>[]}, :SortOrder=>{:fields=>[]}, :"StatsQueryError.Reason"=>{:fields=>[]}, :"StringFormatError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :TimeUnit=>{:fields=>[]}, :UniversalAppBiddingStrategyGoalType=>{:fields=>[]}, :UniversalAppCampaignAsset=>{:fields=>[]}, :"UrlError.Reason"=>{:fields=>[]}, :VanityPharmaDisplayUrlMode=>{:fields=>[]}, :VanityPharmaText=>{:fields=>[]}}
    CAMPAIGNSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CAMPAIGNSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, CampaignServiceRegistry)
    end
  end
end; end; end
