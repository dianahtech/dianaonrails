class OrderedItemController < ApplicationController
    #protect_from_forgery with: :null_session

    def index
        ordered_items = OrderedItem.order('created_at DESC')
        render json: {status: 'SUCCESS', message:'Pedidos Carregados', data: ordered_items}, status: :ok
    end  

    # GET /items/1 or /items/1.json
    def show
        ordered_items = OrderedItem.where(native_user_id: params[:id])
        render json: {status: 'SUCCESS', message: 'Pedidos encontrados', data: ordered_items}, status: :ok
    end



    def about
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
        params.permit(:status,:final_value,:native_user_id,:store_id,:payment_mode,items:{})
    end


  
  end
  