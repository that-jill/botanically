class InteractionsController < ApplicationController
  before_action :set_plant

  # GET /plants/:id/interactions
  def index
    DataObservation::SUPPORTED_TYPES.size.times do
      @plant.data_observations.build
    end
  end

  # POST /plants/:id/interactions/update
  def update
    # @interactions = DataObservation::SUPPORTED_TYPES
    # respond_to do |format|
    #   if @plant.update(plant_params)
    #     format.html { redirect_to @plant, notice: 'Plant was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @plant }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @plant.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  private

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end

  def plant_params
    params.require(:plant).permit(
      data_observations_attributes: [:type, :value]
    )
  end
end