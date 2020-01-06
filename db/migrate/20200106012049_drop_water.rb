class DropWater < ActiveRecord::Migration[6.0]
  def change
    drop_table :waterings
    rename_column :data_observations, :reading, :value 
  end
end
