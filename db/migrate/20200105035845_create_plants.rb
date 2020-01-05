class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :common_name
      t.string :botanical_name
      t.text :care
      t.string :care_link
      t.string :sunlight
      t.string :water
      t.string :soil

      t.timestamps
    end
  end
end
