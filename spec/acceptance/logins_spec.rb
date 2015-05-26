require "spec_helper"

describe Endpoints::Logins do
  include Committee::Test::Methods
  include Rack::Test::Methods

  def app
    Routes
  end

  def schema_path
    "./schema/schema.json"
  end

  describe 'GET /logins' do
    it 'returns correct status code and conforms to schema' do
      get '/logins'
      assert_equal 200, last_response.status
      assert_schema_conform
    end
  end

  describe 'POST /logins' do
    it 'returns correct status code and conforms to schema' do
      header "Content-Type", "application/json"
      post '/logins', MultiJson.encode({})
      assert_equal 201, last_response.status
      assert_schema_conform
    end
  end

  describe 'GET /logins/:id' do
    it 'returns correct status code and conforms to schema' do
      get "/logins/123"
      assert_equal 200, last_response.status
      assert_schema_conform
    end
  end

  describe 'PATCH /logins/:id' do
    it 'returns correct status code and conforms to schema' do
      header "Content-Type", "application/json"
      patch '/logins/123', MultiJson.encode({})
      assert_equal 200, last_response.status
      assert_schema_conform
    end
  end

  describe 'DELETE /logins/:id' do
    it 'returns correct status code and conforms to schema' do
      delete '/logins/123'
      assert_equal 200, last_response.status
      assert_schema_conform
    end
  end
end
