require "spec_helper"

describe Endpoints::Files, :vcr do
  include Rack::Test::Methods

  describe "GET /files" do

    context 'with a logged user' do
      it 'fetch all the grades' do
        get '/files', nil, { 'HTTP_AUTHORIZATION' => 'fgi98jqdu92iqlbo6jmmarp407' }
        assert_equal 8, JSON.parse(last_response.body).length
        assert_equal 'COORDENAÇÃO', JSON.parse(last_response.body).first[0]
      end
    end

    context 'with a not logged user' do
      it 'brings an empty array' do
        get '/files', nil, { 'HTTP_AUTHORIZATION' => 'invalidtoken' }
        assert_equal 0, JSON.parse(last_response.body).length
      end
    end

  end

  describe 'GET /files/:id' do
    it 'brings the file to the user' do
      req = double(:request, header: {'Content-Disposition' => 'filename=myfile'})
      expect(req).to receive(:body)
      allow(UniaraVirtualParser::Client).to receive(:get_with_token) { req }
      get '/files/batman', nil, { 'HTTP_AUTHORIZATION' => 'brucewayne' }
    end
  end

end
