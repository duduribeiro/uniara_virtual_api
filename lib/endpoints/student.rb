module Endpoints
  class Student < Base
    namespace "/student" do

      get do
        encode UniaraVirtualParser.student token
      end

    end
  end
end
