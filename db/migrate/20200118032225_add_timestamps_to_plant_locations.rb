class AddTimestampsToPlantLocations < ActiveRecord::Migration[6.0]
  def change
    change_table :plant_locations do |t|
      t.timestamps
    end
  end
end
