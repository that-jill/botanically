class DataObservation < ApplicationRecord
  SUPPORTED_TYPES = %w[soil_moisture sunlight temperature]

  belongs_to :plant
end
