json.extract! user, :id, :reference_id, :degree_id, :region_id, :description, :name, :email, :admin, :public, :phone, :company, :position, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
