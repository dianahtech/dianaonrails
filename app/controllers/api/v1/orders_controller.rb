
class Api::V1::OrdersController < ApplicationController
  # GET /items or /items.json
  def index
    render json: {status: 'SUCCESS', message: 'Ordens encontradas'}, status: :ok
  end

  # GET /items/1 or /items/1.json
  def show

    
  end

end
