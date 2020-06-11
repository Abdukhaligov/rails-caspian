json.extract! events_user, :id, :user_id, :event_id, :membership_id, :status, :created_at, :updated_at
json.url events_user_url(events_user, format: :json)
