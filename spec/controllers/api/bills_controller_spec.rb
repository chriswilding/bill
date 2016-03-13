require 'rails_helper'

RSpec.describe Api::BillsController, type: :controller do
  describe 'GET #show' do
    it 'responds with a HTTP 200 status code' do
      get :show, id: 1
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'calls an external API and returns the JSON response' do
      uri = URI('http://safe-plains-5453.herokuapp.com/bill.json')
      # Preventing external service reduces the changes of intermitant failues
      # and slow tests
      expect(Net::HTTP).to receive(:get).with(uri).and_return('{"a":"result"}')

      get :show, id: 1

      expect(response).to be_success
      expect(response.body).to eq('{"a":"result"}')
    end
  end
end
