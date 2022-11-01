class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  #Antes de autenticar deixa ele só ver index/show - Mas deixa guess e deletar
  before_action :authenticate_user!, except: [:index, :show]


  before_action :correct_user, only: [:edit, :update,:destroy]


  # GET /items or /items.json
  def index
    @items = Item.all
  end

  # GET /items/1 or /items/1.json
  def show
    item = Item.where(user_id: params[:id])    
    #item = Item.where(params[:user_id])    
    render json: {status: 'SUCCESS', message: 'Itens encontrados', data: item}, status: :ok
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items or /items.json
  def create
    @item = Item.new(item_params)

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

  # PATCH/PUT /items/1 or /items/1.json
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

  # DELETE /items/1 or /items/1.json
  def destroy
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url, notice: "Item removido com sucesso." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @item = current_user.items.find_by(id: params[:id])
    redirect_to items_path, notice: "Não autorizado a deletar produtos de outras pessoas." if @item.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :weight, :value, :avaiable, :durl, :ean, :offer, :buy_limit, :user_id, :section)
    end
end
