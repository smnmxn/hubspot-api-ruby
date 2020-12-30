=begin
#Webhooks API

#Provides a way for apps to subscribe to certain change events in HubSpot. Once configured, apps will receive event payloads containing details about the changes at a specified target URL. There can only be one target URL for receiving event notifications per app.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Webhooks::BatchInputSubscriptionBatchUpdateRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BatchInputSubscriptionBatchUpdateRequest' do
  before do
    # run before each test
    @instance = Hubspot::Webhooks::BatchInputSubscriptionBatchUpdateRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BatchInputSubscriptionBatchUpdateRequest' do
    it 'should create an instance of BatchInputSubscriptionBatchUpdateRequest' do
      expect(@instance).to be_instance_of(Hubspot::Webhooks::BatchInputSubscriptionBatchUpdateRequest)
    end
  end
  describe 'test attribute "inputs"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
