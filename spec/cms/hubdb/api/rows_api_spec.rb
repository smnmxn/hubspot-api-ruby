=begin
#HubDB endpoints

#HubDB is a relational data store that presents data as rows, columns, and cells in a table, much like a spreadsheet. HubDB tables can be added or modified [in the HubSpot CMS](https://knowledge.hubspot.com/cos-general/how-to-edit-hubdb-tables), but you can also use the API endpoints documented here. For more information on HubDB tables and using their data on a HubSpot site, see the [CMS developers site](https://designers.hubspot.com/docs/tools/hubdb). You can also see the [documentation for dynamic pages](https://designers.hubspot.com/docs/tutorials/how-to-build-dynamic-pages-with-hubdb) for more details about the `useForPages` field.  HubDB tables support `draft` and `live` versions and you can publish and unpublish the live version. This allows you to update data in the table, either for testing or to allow for a manual approval process, without affecting any live pages using the existing data. Draft data can be reviewed, pushed to live version, and published by a user working in HubSpot or published via the API. Draft data can also be discarded, allowing users to go back to the live version of the data without disrupting it. If a table is set to be `allowed for public access`, you can access the published version of the table and rows without any authentication.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Cms::Hubdb::RowsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RowsApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Cms::Hubdb::RowsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RowsApi' do
    it 'should create an instance of RowsApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Cms::Hubdb::RowsApi)
    end
  end

  # unit tests for clone_draft_table_row
  # Clone a row
  # Clones a single row in the &#x60;draft&#x60; version of the table.
  # @param row_id The ID of the row
  # @param table_id_or_name The ID or name of the table
  # @param [Hash] opts the optional parameters
  # @return [HubDbTableRowV3]
  describe 'clone_draft_table_row test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_table_row
  # Add a new row to a table
  # Add a new row to a HubDB table. New rows will be added to the &#x60;draft&#x60; version of the table. Use &#x60;push-live&#x60; endpoint to push these changes to live version and publish them.
  # @param table_id_or_name The ID or name of the target table.
  # @param hub_db_table_row_v3_input The row definition JSON, formatted as described above.
  # @param [Hash] opts the optional parameters
  # @return [HubDbTableRowV3]
  describe 'create_table_row test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_draft_table_row_by_id
  # Get a row from the draft table
  # Get a single row by ID from a table&#39;s &#x60;draft&#x60; version.
  # @param row_id The ID of the row
  # @param table_id_or_name The ID or name of the table
  # @param [Hash] opts the optional parameters
  # @return [HubDbTableRowV3]
  describe 'get_draft_table_row_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_table_row
  # Get a table row
  # Get a single row by ID from a table&#39;s &#x60;live&#x60; version. **Note:** This endpoint can be accessed without any authentication, if the table is set to be allowed for public access.
  # @param row_id The ID of the row
  # @param table_id_or_name The ID or name of the table
  # @param [Hash] opts the optional parameters
  # @return [HubDbTableRowV3]
  describe 'get_table_row test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_table_rows
  # Get rows for a table
  # Returns a set of rows in the &#x60;live&#x60; version of the specified table. Row results can be filtered and sorted. Refer to the overview section for detailed filtering and sorting options. **Note:** This endpoint can be accessed without any authentication, if the table is set to be allowed for public access.
  # @param table_id_or_name The ID or name of the table to query.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :properties Specify the column names to get results containing only the required columns instead of all column details.
  # @option opts [String] :after The cursor token value to get the next set of results. You can get this from the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
  # @option opts [Integer] :limit The maximum number of results to return. Default is &#x60;1000&#x60;.
  # @option opts [Array<String>] :sort Specifies the column names to sort the results by. See the above description for more details.
  # @return [CollectionResponseWithTotalHubDbTableRowV3ForwardPaging]
  describe 'get_table_rows test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for purge_draft_table_row
  # Permanently deletes a row
  # Permanently deletes a row from a table&#39;s &#x60;draft&#x60; version.
  # @param row_id The ID of the row
  # @param table_id_or_name The ID or name of the table
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'purge_draft_table_row test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read_draft_table_rows
  # Get rows from draft table
  # Returns rows in the &#x60;draft&#x60; version of the specified table. Row results can be filtered and sorted using the options mentioned in the overview section.
  # @param table_id_or_name The ID or name of the table to query.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :after The cursor token value to get the next set of results. You can get this from the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
  # @option opts [Array<String>] :properties Specify the column names to get results containing only the required columns instead of all column details. If you want to include multiple columns in the result, use this query param as many times. 
  # @option opts [Integer] :limit The maximum number of results to return. Default is &#x60;1000&#x60;.
  # @option opts [Array<String>] :sort Specifies the column names to sort the results by.
  # @return [CollectionResponseWithTotalHubDbTableRowV3ForwardPaging]
  describe 'read_draft_table_rows test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace_draft_table_row
  # Replaces an existing row
  # Replace a single row in the table&#39;s &#x60;draft&#x60; version. All the column values must be specified. If a column has a value in the target table and this request doesn&#39;t define that value, it will be deleted. See the &#x60;Create a row&#x60; endpoint for instructions on how to format the JSON row definitions.
  # @param row_id The ID of the row
  # @param table_id_or_name The ID or name of the table
  # @param hub_db_table_row_v3_input The JSON object of the row
  # @param [Hash] opts the optional parameters
  # @return [HubDbTableRowV3]
  describe 'replace_draft_table_row test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_draft_table_row
  # Updates an existing row
  # Sparse updates a single row in the table&#39;s &#x60;draft&#x60; version. All the column values need not be specified. Only the columns or fields that needs to be modified can be specified. See the &#x60;Create a row&#x60; endpoint for instructions on how to format the JSON row definitions.
  # @param row_id The ID of the row
  # @param table_id_or_name The ID or name of the table
  # @param hub_db_table_row_v3_input The JSON object of the row with necessary fields that needs to be updated.
  # @param [Hash] opts the optional parameters
  # @return [HubDbTableRowV3]
  describe 'update_draft_table_row test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
