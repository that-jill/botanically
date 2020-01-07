class InteractionsController < ApplicationController
  before_action :set_plant

  # GET /plants/:id/interactions
  def index
  end

  # POST /plants/:id/interactions/update
  def update
    ActiveRecord::Base.transaction do
      SoilMoisture.create(plant: @plant, value: params[:soil_moisture][:value]) if params[:soil_moisture]
      Temperature.create(plant: @plant, value: params[:temperature][:value]) if params[:temperature]
      Sunlight.create(plant: @plant, value: params[:sunlight][:value]) if params[:sunlight]
      Water.create(plant: @plant, value: params[:water][:value]) if params[:water]
    end
    redirect_to :root, notice: 'Interaction successfully recorded'
  end

  private

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end
end
