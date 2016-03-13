module Api
  class BillsController < ApplicationController
    def show
      render json: { foo: :bar }
    end
  end
end
