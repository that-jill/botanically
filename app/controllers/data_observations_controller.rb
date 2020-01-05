class DataObservationsController < ApplicationController
  before_action :set_data_observation, only: [:show, :edit, :update, :destroy]

  # GET /data_observations
  # GET /data_observations.json
  def index
    @data_observations = DataObservation.all
  end

  # GET /data_observations/1
  # GET /data_observations/1.json
  def show
  end

  # GET /data_observations/new
  def new
    @data_observation = DataObservation.new
  end

  # GET /data_observations/1/edit
  def edit
  end

  # POST /data_observations
  # POST /data_observations.json
  def create
    @data_observation = DataObservation.new(data_observation_params)

    respond_to do |format|
      if @data_observation.save
        format.html { redirect_to @data_observation, notice: 'Data observation was successfully created.' }
        format.json { render :show, status: :created, location: @data_observation }
      else
        format.html { render :new }
        format.json { render json: @data_observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_observations/1
  # PATCH/PUT /data_observations/1.json
  def update
    respond_to do |format|
      if @data_observation.update(data_observation_params)
        format.html { redirect_to @data_observation, notice: 'Data observation was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_observation }
      else
        format.html { render :edit }
        format.json { render json: @data_observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_observations/1
  # DELETE /data_observations/1.json
  def destroy
    @data_observation.destroy
    respond_to do |format|
      format.html { redirect_to data_observations_url, notice: 'Data observation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_observation
      @data_observation = DataObservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_observation_params
      params.require(:data_observation).permit(:plant_id, :type, :reading)
    end
end
