json.extract! data_observation, :id, :type, :reading, :created_at, :updated_at
json.url data_observation_url(data_observation, format: :json)
