class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]
  before_action :authenticate_store_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update,:destroy, :show]


  
  def index    
    @items = Item.where(store_user_id:current_store_user.id)  
    
  end

  def show    
    item = Item.where(params[:store_user_id])    
  end


  def new 
    @item = Item.new
  end


  def edit
  end


  def create
    logger.debug "The article was saved and now the user is going to be redirected..."
    logger.debug "currentStoreUser: #{item_params}"

 
    @item = current_store_user.items.build(item_params) 

    respond_to do |format|
      if @item.save
        format.html { redirect_to item_url(@item), notice: "Item criado com sucesso." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to item_url(@item), notice: "Item atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: "Item removido com sucesso." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @item = current_store_user.items.find_by(id: params[:id])
    redirect_to items_path, notice: "Não autorizado a deletar produtos de outras pessoas." if @item.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :weight, :value, :available, :durl, :ean, :offer, :buy_limit, :store_user_id, :section, :description)
    end
end
