module Endpoints
  class Grades < Base
    namespace "/grades" do
      before do
        content_type :json, charset: 'utf-8'
      end

      get do
        encode UniaraVirtualParser.grades token
      end

    end
  end
end
