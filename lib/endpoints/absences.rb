module Endpoints
  class Absences < Base
    namespace "/absences" do

      get do 
        encode UniaraVirtualParser.absences token
      end

    end
  end
end
