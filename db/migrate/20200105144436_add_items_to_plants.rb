class AddItemsToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :humidity, :string
    add_column :plants, :fertilizer, :string
    add_column :plants, :temperature, :string
  end
end
