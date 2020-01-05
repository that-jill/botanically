class Location < ApplicationRecord
  belongs_to :room
  has_many :plant_locations
  has_many :plants, through: :plant_locations

  validates_presence_of :name
end
