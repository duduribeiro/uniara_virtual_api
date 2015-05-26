require 'spec_helper'

describe Endpoints::Login, :vcr do
  include Rack::Test::Methods

  describe 'POST /login' do
    context 'with a valid login' do
      before :each do
        post '/login', ra: '05209024', password: '123456'
      end

      it 'succeeds' do
        assert_equal 201, last_response.status
      end

      it 'returns the token in the body' do
        assert last_response.body =~ /^(?!\s*$).+/
      end
    end

    context 'with an invalid login' do
      it 'returns 400' do
        post '/login', ra: '05209024', password: 'batman'
        assert_equal 400, last_response.status
      end
    end

  end
end
