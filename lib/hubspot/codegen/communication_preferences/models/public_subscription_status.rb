=begin
#Subscriptions

#Subscriptions allow contacts to control what forms of communications they receive. Contacts can decide whether they want to receive communication pertaining to a specific topic, brand, or an entire HubSpot account.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module Hubspot
  module CommunicationPreferences
    class PublicSubscriptionStatus
      # The ID for the subscription.
      attr_accessor :id

      # The name of the subscription.
      attr_accessor :name

      # A description of the subscription.
      attr_accessor :description

      # Whether the contact is subscribed.
      attr_accessor :status

      # Where the status is determined from e.g. PORTAL_WIDE_STATUS if the contact opted out from the portal.
      attr_accessor :source_of_status

      # The ID of the brand that the subscription is associated with, if there is one.
      attr_accessor :brand_id

      # The name of the preferences group that the subscription is associated with.
      attr_accessor :preference_group_name

      # The legal reason for the current status of the subscription.
      attr_accessor :legal_basis

      # A more detailed explanation to go with the legal basis.
      attr_accessor :legal_basis_explanation

      class EnumAttributeValidator
        attr_reader :datatype
        attr_reader :allowable_values

        def initialize(datatype, allowable_values)
          @allowable_values = allowable_values.map do |value|
            case datatype.to_s
            when /Integer/i
              value.to_i
            when /Float/i
              value.to_f
            else
              value
            end
          end
        end

        def valid?(value)
          !value || allowable_values.include?(value)
        end
      end

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'name' => :'name',
          :'description' => :'description',
          :'status' => :'status',
          :'source_of_status' => :'sourceOfStatus',
          :'brand_id' => :'brandId',
          :'preference_group_name' => :'preferenceGroupName',
          :'legal_basis' => :'legalBasis',
          :'legal_basis_explanation' => :'legalBasisExplanation'
        }
      end

      # Attribute type mapping.
      def self.openapi_types
        {
          :'id' => :'String',
          :'name' => :'String',
          :'description' => :'String',
          :'status' => :'String',
          :'source_of_status' => :'String',
          :'brand_id' => :'Integer',
          :'preference_group_name' => :'String',
          :'legal_basis' => :'String',
          :'legal_basis_explanation' => :'String'
        }
      end

      # List of attributes with nullable: true
      def self.openapi_nullable
        Set.new([
        ])
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        if (!attributes.is_a?(Hash))
          fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::CommunicationPreferences::PublicSubscriptionStatus` initialize method"
        end

        # check to see if the attribute exists and convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h|
          if (!self.class.attribute_map.key?(k.to_sym))
            fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::CommunicationPreferences::PublicSubscriptionStatus`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
          end
          h[k.to_sym] = v
        }

        if attributes.key?(:'id')
          self.id = attributes[:'id']
        end

        if attributes.key?(:'name')
          self.name = attributes[:'name']
        end

        if attributes.key?(:'description')
          self.description = attributes[:'description']
        end

        if attributes.key?(:'status')
          self.status = attributes[:'status']
        end

        if attributes.key?(:'source_of_status')
          self.source_of_status = attributes[:'source_of_status']
        end

        if attributes.key?(:'brand_id')
          self.brand_id = attributes[:'brand_id']
        end

        if attributes.key?(:'preference_group_name')
          self.preference_group_name = attributes[:'preference_group_name']
        end

        if attributes.key?(:'legal_basis')
          self.legal_basis = attributes[:'legal_basis']
        end

        if attributes.key?(:'legal_basis_explanation')
          self.legal_basis_explanation = attributes[:'legal_basis_explanation']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        if @id.nil?
          invalid_properties.push('invalid value for "id", id cannot be nil.')
        end

        if @name.nil?
          invalid_properties.push('invalid value for "name", name cannot be nil.')
        end

        if @description.nil?
          invalid_properties.push('invalid value for "description", description cannot be nil.')
        end

        if @status.nil?
          invalid_properties.push('invalid value for "status", status cannot be nil.')
        end

        if @source_of_status.nil?
          invalid_properties.push('invalid value for "source_of_status", source_of_status cannot be nil.')
        end

        invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        return false if @id.nil?
        return false if @name.nil?
        return false if @description.nil?
        return false if @status.nil?
        status_validator = EnumAttributeValidator.new('String', ["SUBSCRIBED", "NOT_SUBSCRIBED"])
        return false unless status_validator.valid?(@status)
        return false if @source_of_status.nil?
        source_of_status_validator = EnumAttributeValidator.new('String', ["PORTAL_WIDE_STATUS", "BRAND_WIDE_STATUS", "SUBSCRIPTION_STATUS"])
        return false unless source_of_status_validator.valid?(@source_of_status)
        legal_basis_validator = EnumAttributeValidator.new('String', ["LEGITIMATE_INTEREST_PQL", "LEGITIMATE_INTEREST_CLIENT", "PERFORMANCE_OF_CONTRACT", "CONSENT_WITH_NOTICE", "NON_GDPR", "PROCESS_AND_STORE", "LEGITIMATE_INTEREST_OTHER"])
        return false unless legal_basis_validator.valid?(@legal_basis)
        true
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] status Object to be assigned
      def status=(status)
        validator = EnumAttributeValidator.new('String', ["SUBSCRIBED", "NOT_SUBSCRIBED"])
        unless validator.valid?(status)
          fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
        end
        @status = status
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] source_of_status Object to be assigned
      def source_of_status=(source_of_status)
        validator = EnumAttributeValidator.new('String', ["PORTAL_WIDE_STATUS", "BRAND_WIDE_STATUS", "SUBSCRIPTION_STATUS"])
        unless validator.valid?(source_of_status)
          fail ArgumentError, "invalid value for \"source_of_status\", must be one of #{validator.allowable_values}."
        end
        @source_of_status = source_of_status
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] legal_basis Object to be assigned
      def legal_basis=(legal_basis)
        validator = EnumAttributeValidator.new('String', ["LEGITIMATE_INTEREST_PQL", "LEGITIMATE_INTEREST_CLIENT", "PERFORMANCE_OF_CONTRACT", "CONSENT_WITH_NOTICE", "NON_GDPR", "PROCESS_AND_STORE", "LEGITIMATE_INTEREST_OTHER"])
        unless validator.valid?(legal_basis)
          fail ArgumentError, "invalid value for \"legal_basis\", must be one of #{validator.allowable_values}."
        end
        @legal_basis = legal_basis
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
            id == o.id &&
            name == o.name &&
            description == o.description &&
            status == o.status &&
            source_of_status == o.source_of_status &&
            brand_id == o.brand_id &&
            preference_group_name == o.preference_group_name &&
            legal_basis == o.legal_basis &&
            legal_basis_explanation == o.legal_basis_explanation
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Integer] Hash code
      def hash
        [id, name, description, status, source_of_status, brand_id, preference_group_name, legal_basis, legal_basis_explanation].hash
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def self.build_from_hash(attributes)
        new.build_from_hash(attributes)
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        self.class.openapi_types.each_pair do |key, type|
          if type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the attribute
            # is documented as an array but the input is not
            if attributes[self.class.attribute_map[key]].is_a?(Array)
              self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
            end
          elsif !attributes[self.class.attribute_map[key]].nil?
            self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
          end # or else data not found in attributes(hash), not an issue as the data can be optional
        end

        self
      end

      # Deserializes the data based on type
      # @param string type Data type
      # @param string value Value to be deserialized
      # @return [Object] Deserialized data
      def _deserialize(type, value)
        case type.to_sym
        when :DateTime
          DateTime.parse(value)
        when :Date
          Date.parse(value)
        when :String
          value.to_s
        when :Integer
          value.to_i
        when :Float
          value.to_f
        when :Boolean
          if value.to_s =~ /\A(true|t|yes|y|1)\z/i
            true
          else
            false
          end
        when :Object
          # generic object (usually a Hash), return directly
          value
        when /\AArray<(?<inner_type>.+)>\z/
          inner_type = Regexp.last_match[:inner_type]
          value.map { |v| _deserialize(inner_type, v) }
        when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
          k_type = Regexp.last_match[:k_type]
          v_type = Regexp.last_match[:v_type]
          {}.tap do |hash|
            value.each do |k, v|
              hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
            end
          end
        else # model
          Hubspot::CommunicationPreferences.const_get(type).build_from_hash(value)
        end
      end

      # Returns the string representation of the object
      # @return [String] String presentation of the object
      def to_s
        to_hash.to_s
      end

      # to_body is an alias to to_hash (backward compatibility)
      # @return [Hash] Returns the object in the form of hash
      def to_body
        to_hash
      end

      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          if value.nil?
            is_nullable = self.class.openapi_nullable.include?(attr)
            next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
          end
          
          hash[param] = _to_hash(value)
        end
        hash
      end

      # Outputs non-array value in the form of hash
      # For object, use to_hash. Otherwise, just return the value
      # @param [Object] value Any valid value
      # @return [Hash] Returns the value in the form of hash
      def _to_hash(value)
        if value.is_a?(Array)
          value.compact.map { |v| _to_hash(v) }
        elsif value.is_a?(Hash)
          {}.tap do |hash|
            value.each { |k, v| hash[k] = _to_hash(v) }
          end
        elsif value.respond_to? :to_hash
          value.to_hash
        else
          value
        end
      end
    end
  end
end