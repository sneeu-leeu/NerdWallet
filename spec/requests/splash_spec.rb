require 'rails_helper'

RSpec.describe 'Splashes', type: :request do
  describe 'GET /indes' do
    it 'returns http success' do
      get '/splash/indes'
      expect(response).to have_http_status(:success)
    end
  end
end