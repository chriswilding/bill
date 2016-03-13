require 'rails_helper'

RSpec.describe Api::BillsController, type: :controller do
  describe 'GET #show' do
    it 'responds with a HTTP 200 status code' do
      get :show, id: 1
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
