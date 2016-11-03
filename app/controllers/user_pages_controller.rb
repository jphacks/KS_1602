class UserPagesController < ApplicationController
  before_action :set_user_page, only: [:show, :edit, :update, :destroy]

  # GET /user_pages
  # GET /user_pages.json
  def index
    @user_pages = UserPage.all
  end

  # GET /user_pages/1
  # GET /user_pages/1.json
  def show
  end

  # GET /user_pages/new
  def new
    @user_page = UserPage.new
  end

  # GET /user_pages/1/edit
  def edit
  end

  # POST /user_pages
  # POST /user_pages.json
  def create
    @user_page = UserPage.new(user_page_params)

    respond_to do |format|
      if @user_page.save
        format.html { redirect_to @user_page, notice: 'User page was successfully created.' }
        format.json { render :show, status: :created, location: @user_page }
      else
        format.html { render :new }
        format.json { render json: @user_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_pages/1
  # PATCH/PUT /user_pages/1.json
  def update
    respond_to do |format|
      if @user_page.update(user_page_params)
        format.html { redirect_to @user_page, notice: 'User page was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_page }
      else
        format.html { render :edit }
        format.json { render json: @user_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_pages/1
  # DELETE /user_pages/1.json
  def destroy
    @user_page.destroy
    respond_to do |format|
      format.html { redirect_to user_pages_url, notice: 'User page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_page
      @user_page = UserPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_page_params
      params.fetch(:user_page, {})
    end
end
