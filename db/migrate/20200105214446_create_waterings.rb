class CreateWaterings < ActiveRecord::Migration[6.0]
  def change
    create_table :waterings do |t|
      t.references :plant, null: false, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
