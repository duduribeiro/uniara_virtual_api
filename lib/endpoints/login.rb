module Endpoints
  class Login < Base
    namespace "/login" do
      before do
        content_type :json, charset: 'utf-8'
      end

      post do
        UniaraVirtualParser.login body_params[:ra], body_params[:password]
        status 201
        encode Hash.new
      end

    end
  end
end
