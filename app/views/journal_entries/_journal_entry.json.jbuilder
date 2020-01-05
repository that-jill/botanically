json.extract! journal_entry, :id, :plant_id, :note, :created_at, :updated_at
json.url journal_entry_url(journal_entry, format: :json)
