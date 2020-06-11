json.extract! event, :id, :name, :description, :address, :date, :active, :created_at, :updated_at
json.url event_url(event, format: :json)
