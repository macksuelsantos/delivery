json.extract! client, :id, :name, :email, :password, :phone, :birthday, :address_id, :created_at, :updated_at
json.url client_url(client, format: :json)
