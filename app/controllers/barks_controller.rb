class BarksController < ApplicationController
  before_action :set_bark, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_dog!, only: [:new, :edit, :create, :update, :destroy]

  # GET /barks
  # GET /barks.json
  def index
    @barks = Bark.all
  end

  # GET /barks/1
  # GET /barks/1.json
  def show
  end

  # GET /barks/new
  def new
    @bark = Bark.new
  end

  # GET /barks/1/edit
  def edit
  end

  # POST /barks
  # POST /barks.json
  def create
    @bark = Bark.new(bark_params)

    respond_to do |format|
      if @bark.save
        format.html { redirect_to @bark, notice: 'Bark was successfully created.' }
        format.json { render :show, status: :created, location: @bark }
      else
        format.html { render :new }
        format.json { render json: @bark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barks/1
  # PATCH/PUT /barks/1.json
  def update
    respond_to do |format|
      if @bark.update(bark_params)
        format.html { redirect_to @bark, notice: 'Bark was successfully updated.' }
        format.json { render :show, status: :ok, location: @bark }
      else
        format.html { render :edit }
        format.json { render json: @bark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barks/1
  # DELETE /barks/1.json
  def destroy
    @bark.destroy
    respond_to do |format|
      format.html { redirect_to barks_url, notice: 'Bark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bark
      @bark = Bark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bark_params
      params.require(:bark).permit(:bark, :dog_id)
    end
end
