class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.references :room, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
