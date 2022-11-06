class OrderedItemController < ApplicationController
    #before_action :set_item, only: %i[ show edit update destroy ]
    #protect_from_forgery with: :null_session

    def index         
        @ordered_items = OrderedItem.where(store_user_id:current_store_user.id)   
        #ordered_items = OrderedItem.order('created_at DESC')     
    end  

    def show
        @ordered_items = OrderedItem.where(store_user_id: params[:id])
        #render json: {status: 'SUCCESS', message: 'Pedidos encontrados', data: ordered_items}, status: :ok
    end

    def create
        logger.debug "ordered_params: #{ordered_params}"
        ordered_item = OrderedItem.new(ordered_params)

        if ordered_item.save
            render json: {status: 'SUCCESS', message:'Pedido Entregue', data: ordered_item}, status: :ok
        else
            render json: {status: 'ERROR', message:'Pedidos não Entregue', data: ordered_item.errors}, status: :unprocessable_entity
        end

    end


    private
    def ordered_params
        params.require(:ordered_item).permit(:status,:final_value,:native_user_id,:store_user_id,:payment_mode,items:{})
    end


  
  end
  