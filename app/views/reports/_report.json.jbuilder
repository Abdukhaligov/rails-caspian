json.extract! report, :id, :user_id, :event_id, :topic_id, :name, :description, :status, :file, :created_at, :updated_at
json.url report_url(report, format: :json)
