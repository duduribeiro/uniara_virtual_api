require 'pry'
module Endpoints
  class Files < Base
    namespace '/files' do

      get do
        json = replace_files_link(UniaraVirtualParser.files token)
        encode json
      end

      get '/:id' do
      end

    end

    private

    def replace_files_link(json)
      new_json = {}
      json.map do |k,v|
        new_json[k] = v.map do |file|
          UniaraVirtualParser::Models::File.new(
            name: file.name,
            link: file.link.gsub(/\/alunos\/consultas\/arquivos\//, '/files/'),
            grade: file.grade
          )
        end
      end
      new_json
    end
  end
end
