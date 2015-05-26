module Endpoints
  class Login < Base
    namespace "/login" do
      before do
        content_type :json, charset: 'utf-8'
      end

      post do
        status 201
        encode UniaraVirtualParser.login body_params[:ra], body_params[:password]
      end

    end
  end
end
