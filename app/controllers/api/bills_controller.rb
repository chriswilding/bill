require 'net/http'

module Api
  class BillsController < ApplicationController
    def show
      uri = URI('http://safe-plains-5453.herokuapp.com/bill.json')
      render json: Net::HTTP.get(uri)
    end
  end
end
