module Endpoints
  class Files < Base
    namespace '/files' do

      get do
        json = replace_files_link(UniaraVirtualParser.files token)
        encode json
      end

      get '/:id' do
        req = UniaraVirtualParser::Client.get_with_token("/alunos/consultas/arquivos/#{params[:id]}", token || params[:token])
        response.headers['content_type'] = "application/octet-stream"
        attachment(req.header['Content-Disposition'].match(/filename=(.*)/)[1])
        response.write req.body
      end

      get '/open/:token_param/:id' do
        send_file UniaraVirtualParser::Client.get_with_token("/alunos/consultas/arquivos/#{params[:id]}", params[:token_param]).body
      end

    end

    private

    def replace_files_link(json)
      json.map do |k,v|
        files = v.map do |file|
          UniaraVirtualParser::Models::File.new(
            name: file.name,
            link: file.link.gsub(/\/alunos\/consultas\/arquivos\//, '/files/'),
            grade: file.grade
          )
        end
        {
          grade: k,
          files: files.map do |file|
            {
              name: file.name,
              link: file.link.gsub(/\/alunos\/consultas\/arquivos\//, '/files/')
            }
          end
        }
      end
    end
  end
end
