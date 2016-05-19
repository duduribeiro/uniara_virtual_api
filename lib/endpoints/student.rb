module Endpoints
  class Student < Base
    namespace "/student" do

      get do
        Oj.dump(UniaraVirtualParser.student(token))
      end

    end
  end
end
