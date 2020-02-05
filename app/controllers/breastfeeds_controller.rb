class BreastfeedsController < ApplicationController
  before_action :set_breastfeed, only: [:show, :edit, :update, :destroy]
  before_action :set_babies, only: [:new, :edit, :create]
  # GET /breastfeeds
  # GET /breastfeeds.json
  def index
    @breastfeeds = Breastfeed.all
  end

  # GET /breastfeeds/1
  # GET /breastfeeds/1.json
  def show
  end

  # GET /breastfeeds/new
  def new
    @breastfeed = Breastfeed.new
  end

  # GET /breastfeeds/1/edit
  def edit
  end

  # POST /breastfeeds
  # POST /breastfeeds.json
  def create
    @breastfeed = Breastfeed.new(breastfeed_params)

    respond_to do |format|
      if @breastfeed.save
        format.html { redirect_to @breastfeed, notice: 'Breastfeed was successfully created.' }
        format.json { render :show, status: :created, location: @breastfeed }
      else
        format.html { render :new }
        format.json { render json: @breastfeed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /breastfeeds/1
  # PATCH/PUT /breastfeeds/1.json
  def update
    respond_to do |format|
      if @breastfeed.update(breastfeed_params)
        format.html { redirect_to @breastfeed, notice: 'Breastfeed was successfully updated.' }
        format.json { render :show, status: :ok, location: @breastfeed }
      else
        format.html { render :edit }
        format.json { render json: @breastfeed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breastfeeds/1
  # DELETE /breastfeeds/1.json
  def destroy
    @breastfeed.destroy
    respond_to do |format|
      format.html { redirect_to breastfeeds_url, notice: 'Breastfeed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breastfeed
      @breastfeed = Breastfeed.find(params[:id])
    end

    def set_babies
      @babies_array = Baby.order(:name).pluck(:name, :id)
    end  
    # Never trust parameters from the scary internet, only allow the white list through.
    def breastfeed_params
      params.require(:breastfeed).permit(:volume, :feed_time, :baby_id)
    end
end
