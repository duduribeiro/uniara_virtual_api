require 'pry'
require 'pry-remote'
module Endpoints
  class Login < Base
    namespace "/login" do
      before do
        content_type :json, charset: 'utf-8'
      end

      post do
        status 201
        encode Hash.new
      end

    end
  end
end
