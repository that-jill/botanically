class WateringsController < ApplicationController
  before_action :set_water, only: [:show, :edit, :update, :destroy]

  # GET /waterings
  # GET /waterings.json
  def index
    @waterings = Water.all
  end

  # GET /waterings/1
  # GET /waterings/1.json
  def show
  end

  # GET /waterings/new
  def new
    @water = Water.new
  end

  # GET /waterings/1/edit
  def edit
  end

  # POST /waterings
  # POST /waterings.json
  def create
    @water = Water.new(water_params)

    respond_to do |format|
      if @water.save
        format.html { redirect_to @water, notice: 'Water was successfully created.' }
        format.json { render :show, status: :created, location: @water }
      else
        format.html { render :new }
        format.json { render json: @water.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waterings/1
  # PATCH/PUT /waterings/1.json
  def update
    respond_to do |format|
      if @water.update(water_params)
        format.html { redirect_to @water, notice: 'Water was successfully updated.' }
        format.json { render :show, status: :ok, location: @water }
      else
        format.html { render :edit }
        format.json { render json: @water.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waterings/1
  # DELETE /waterings/1.json
  def destroy
    @water.destroy
    respond_to do |format|
      format.html { redirect_to waterings_url, notice: 'Water was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water
      @water = Water.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_params
      params.require(:water).permit(:plant_id, :amount)
    end
end
