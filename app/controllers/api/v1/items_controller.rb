
class Api::V1::ItemsController < ApplicationController
  # GET /items or /items.json
  def index
    @items = Item.all  
    render json:  @items    
  end

  # GET /items/1 or /items/1.json
  def show
    #To usando como api pra chamar a loja, criar outro controller pra fazer isso...
    item = Item.where(user_id: params[:id])    
    #item = Item.where(params[:user_id])    
    render json: {status: 'SUCCESS', message: 'Itens encontrados', data: item}, status: :ok
  end

end
