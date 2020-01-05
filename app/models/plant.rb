class Plant < ApplicationRecord
  acts_as_taggable

  has_many :plant_locations
  has_many :locations, through: :plant_locations
  has_many :journal_entries
  has_many :waterings

  def current_location_name
    current_location = plant_locations.order(:created_at).take(1).first
    return 'n/a' if current_location.blank?
    current_location.location.name
  end
end
