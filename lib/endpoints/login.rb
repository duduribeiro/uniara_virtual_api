module Endpoints
  class Login < Base
    namespace "/login" do

      post do
        status 201
        encode UniaraVirtualParser.login body_params[:ra], body_params[:password]
      end

    end
  end
end
