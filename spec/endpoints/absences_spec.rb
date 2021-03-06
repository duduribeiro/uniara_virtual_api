require "spec_helper"

describe Endpoints::Absences do
  include Rack::Test::Methods

  describe "GET /absences", :vcr do
    context 'with a logged user' do
      it 'fetch all the absences' do
        get '/absences', nil, { 'HTTP_AUTHORIZATION' => 'okq9un0vhvq3nnup43gocakr33' }
        assert_equal 17, JSON.parse(last_response.body).length
      end
    end

    context 'with a not logged user' do
      it 'brings an empty array' do
        get '/absences', nil, { 'HTTP_AUTHORIZATION' => 'invalidtoken' }
        assert_equal 0, JSON.parse(last_response.body).length
      end
    end
  end
end
