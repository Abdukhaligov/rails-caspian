json.extract! document, :id, :user_id, :voucher_id, :path, :created_at, :updated_at
json.url document_url(document, format: :json)
