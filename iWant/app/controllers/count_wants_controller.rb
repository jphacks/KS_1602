class CountWantsController < ApplicationController
  before_action :set_count_want, only: [:show, :edit, :update, :destroy]

  # GET /count_wants
  # GET /count_wants.json
  def index
    @count_wants = CountWant.all
  end

  # GET /count_wants/1
  # GET /count_wants/1.json
  def show
  end

  # GET /count_wants/new
  def new
    @count_want = CountWant.new
  end

  # GET /count_wants/1/edit
  def edit
  end

  # POST /count_wants
  # POST /count_wants.json
  def create
    @count_want = CountWant.new(count_want_params)

    respond_to do |format|
      if @count_want.save
        format.html { redirect_to @count_want, notice: 'Count want was successfully created.' }
        format.json { render :show, status: :created, location: @count_want }
      else
        format.html { render :new }
        format.json { render json: @count_want.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /count_wants/1
  # PATCH/PUT /count_wants/1.json
  def update
    respond_to do |format|
      if @count_want.update(count_want_params)
        format.html { redirect_to @count_want, notice: 'Count want was successfully updated.' }
        format.json { render :show, status: :ok, location: @count_want }
      else
        format.html { render :edit }
        format.json { render json: @count_want.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /count_wants/1
  # DELETE /count_wants/1.json
  def destroy
    @count_want.destroy
    respond_to do |format|
      format.html { redirect_to count_wants_url, notice: 'Count want was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_count_want
      @count_want = CountWant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def count_want_params
      params.require(:count_want).permit(:IDEA, :CATEGORY_ID, :TITLE, :COUNT)
    end
end
