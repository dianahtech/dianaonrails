
class Api::V1::OrdersController < ApplicationController
  # GET /items or /items.json
  def index
    render json: {status: 'SUCCESS', message: 'Ordens encontradas'}, status: :ok
  end

  def show
    ordered_items = OrderedItem.where(native_user_id: params[:id])
    render json: {status: 'SUCCESS', message: 'Pedidos encontrados', data: ordered_items}, status: :ok
  end


  def create      
    ordered_item = OrderedItem.new(ordered_params)   
    if ordered_item.save
        render json: {status: 'SUCCESS', message:'Pedido Entregue', data: ordered_item}, status: :ok
    else
        render json: {status: 'ERROR', message:'Pedidos não Entregue', data: ordered_item.errors}, status: :unprocessable_entity
    end

  end

    
  private 
  def ordered_params   
    params.permit(:status,:final_value,:native_user_id,:store_user_id,:payment_mode,items:{})     
  end

end
