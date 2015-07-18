module Endpoints
  class Files < Base
    namespace '/files' do

      get do
        encode UniaraVirtualParser.files token
      end

    end
  end
end
