require 'net/http'

module Api
  class BillsController < ApplicationController
    def show
      # In a real application I would expect to create/use a http client class
      # to adapt the API and help handle expections. The below assumes that the
      # JSON response is always valid and does not attempt to handle an HTTP
      # errors as you would expect in a real application.
      uri = URI('http://safe-plains-5453.herokuapp.com/bill.json')
      render json: Net::HTTP.get(uri)
    end
  end
end
