class DataObservation < ApplicationRecord
  SUPPORTED_TYPES = [
    ['SoilMoisture', :soil],
    ['Sunlight', :sunlight],
    ['Temperature', :temperature],
    ['Water', :water],
  ]

  validates_presence_of :type, in: SUPPORTED_TYPES.map(&:first)

  belongs_to :plant
end
