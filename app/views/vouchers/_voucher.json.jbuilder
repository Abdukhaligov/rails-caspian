json.extract! voucher, :id, :event_id, :membership_id, :name, :description, :template, :uniq, :created_at, :updated_at
json.url voucher_url(voucher, format: :json)
