=begin
#Schemas

#The CRM uses schemas to define how custom objects should store and represent information in the HubSpot CRM. Schemas define details about an object's type, properties, and associations. The schema can be uniquely identified by its **object type ID**.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Crm::Schemas::ObjectTypeDefinitionLabels
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ObjectTypeDefinitionLabels' do
  before do
    # run before each test
    @instance = Hubspot::Crm::Schemas::ObjectTypeDefinitionLabels.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ObjectTypeDefinitionLabels' do
    it 'should create an instance of ObjectTypeDefinitionLabels' do
      expect(@instance).to be_instance_of(Hubspot::Crm::Schemas::ObjectTypeDefinitionLabels)
    end
  end
  describe 'test attribute "singular"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "plural"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
