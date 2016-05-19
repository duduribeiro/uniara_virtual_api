module Endpoints
  class Absences < Base
    namespace "/absences" do

      get do
        Oj.dump(UniaraVirtualParser.absences(token))
      end

    end
  end
end
