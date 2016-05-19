module Endpoints
  class Grades < Base
    namespace "/grades" do

      get do
        Oj.dump(UniaraVirtualParser.grades(token))
      end

    end
  end
end
