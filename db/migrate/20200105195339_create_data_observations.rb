class CreateDataObservations < ActiveRecord::Migration[6.0]
  def change
    create_table :data_observations do |t|
      t.string :type
      t.references :plant, null: false, foreign_key: true
      t.float :reading

      t.timestamps
    end
  end
end
