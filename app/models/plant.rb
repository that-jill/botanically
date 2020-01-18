class Plant < ApplicationRecord
  TEMPLATED_DATA =[
    ['Common Name', :common_name],
    ['Location', :current_location_name],
    ['Last Watered', :last_watered],
    ['Care Link', :care_link],
    ['Sunlight', :sunlight],
    ['Water', :water],
    ['Soil', :soil]
  ]

  acts_as_taggable

  has_many :plant_locations
  has_many :locations, through: :plant_locations
  has_many :journal_entries
  has_many :waterings, class_name: 'Water'
  has_many :data_observations

  def current_location_name
    current_location = plant_locations.order(:created_at).take(1).first
    return 'n/a' if current_location.blank?
    current_location.location.name
  end

  def last_watered
    last_watering = waterings.order(:created_at).take(1).first
    return 'n/a' if last_watering.blank?
    num_days = (Time.current - last_watering.created_at).to_i / 1.day
    "#{num_days} days ago"
  end
end
