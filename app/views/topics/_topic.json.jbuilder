json.extract! topic, :id, :topic_id, :name, :description, :created_at, :updated_at
json.url topic_url(topic, format: :json)
