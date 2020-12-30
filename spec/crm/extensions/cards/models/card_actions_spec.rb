=begin
#CRM cards

#Allows an app to extend the CRM UI by surfacing custom cards in the sidebar of record pages. These cards are defined up-front as part of app configuration, then populated by external data fetch requests when the record page is accessed by a user.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Crm::Extensions::Cards::CardActions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CardActions' do
  before do
    # run before each test
    @instance = Hubspot::Crm::Extensions::Cards::CardActions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CardActions' do
    it 'should create an instance of CardActions' do
      expect(@instance).to be_instance_of(Hubspot::Crm::Extensions::Cards::CardActions)
    end
  end
  describe 'test attribute "base_urls"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
