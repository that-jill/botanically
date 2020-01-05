class PlantLocation < ActiveRecord::Migration[6.0]
  def change
    create_join_table :plants, :locations, table_name: :plant_locations, column_options: { foreign_key: true } do |t|
      t.index :plant_id
      t.index :location_id
    end
  end
end
