module Endpoints
  class Login < Base
    namespace "/login" do

      post do
        status 201
        Oj.dump(UniaraVirtualParser.login(body_params[:ra], body_params[:password]))
      end

    end
  end
end
