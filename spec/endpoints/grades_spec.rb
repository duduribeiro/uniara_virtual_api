require "spec_helper"

describe Endpoints::Grades do
  include Rack::Test::Methods

  describe "GET /grades", :vcr do

    context 'with a logged user' do
      it 'fetch all the grades' do
        get '/grades', nil, { 'HTTP_AUTHORIZATION' => 'u5lsp2kran8dvf39cdruvel3h6' }
        assert_equal 14, JSON.parse(last_response.body).length
      end
    end

    context 'with a not logged user' do
      it 'brings an empty array' do
        get '/grades', nil, { 'HTTP_AUTHORIZATION' => 'invalidtoken' }
        assert_equal 0, JSON.parse(last_response.body).length
      end
    end

  end
end
