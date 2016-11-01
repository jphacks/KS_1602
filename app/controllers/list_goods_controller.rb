class ListGoodsController < ApplicationController
  before_action :set_list_good, only: [:show, :edit, :update, :destroy]

  # GET /list_goods
  # GET /list_goods.json
  def index
    @list_goods = ListGood.all
  end

  # GET /list_goods/1
  # GET /list_goods/1.json
  def show
  end

  # GET /list_goods/new
  def new
    @list_good = ListGood.new
  end

  # GET /list_goods/1/edit
  def edit
  end

  # POST /list_goods
  # POST /list_goods.json
  def create
    @list_good = ListGood.new(list_good_params)

    respond_to do |format|
      if @list_good.save
        format.html { redirect_to @list_good, notice: 'List good was successfully created.' }
        format.json { render :show, status: :created, location: @list_good }
      else
        format.html { render :new }
        format.json { render json: @list_good.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_goods/1
  # PATCH/PUT /list_goods/1.json
  def update
    respond_to do |format|
      if @list_good.update(list_good_params)
        format.html { redirect_to @list_good, notice: 'List good was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_good }
      else
        format.html { render :edit }
        format.json { render json: @list_good.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_goods/1
  # DELETE /list_goods/1.json
  def destroy
    @list_good.destroy
    respond_to do |format|
      format.html { redirect_to list_goods_url, notice: 'List good was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_good
      @list_good = ListGood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_good_params
      params.require(:list_good).permit(:WANT_ID, :USER_ID, :NAME, :COUNT)
    end
end
