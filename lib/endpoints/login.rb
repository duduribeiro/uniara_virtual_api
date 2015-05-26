module Endpoints
  class Login < Base
    namespace "/login" do
      before do
        content_type :json, charset: 'utf-8'
      end

      post do
        begin
          UniaraVirtualParser.login body_params[:ra], body_params[:password]
          status 201
          encode Hash.new
        rescue UniaraVirtualParser::InvalidLogin
          status 400
          '{ "error": "Invalid Login" }'
        end
      end

    end
  end
end
