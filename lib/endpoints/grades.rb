module Endpoints
  class Grades < Base
    namespace "/grades" do

      get do
        encode UniaraVirtualParser.grades token
      end

    end
  end
end
