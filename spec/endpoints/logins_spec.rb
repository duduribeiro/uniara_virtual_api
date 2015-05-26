require "spec_helper"

describe Endpoints::Logins do
  include Rack::Test::Methods

  describe "GET /logins" do
    it "succeeds" do
      get "/logins"
      assert_equal 200, last_response.status
    end
  end
end
