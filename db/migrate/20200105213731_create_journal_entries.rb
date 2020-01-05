class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.references :plant, null: false, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
