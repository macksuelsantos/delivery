json.extract! order, :id, :client_id, :address_id, :status, :payment, :delivery_guy, :fare, :note, :created_at, :updated_at
json.url order_url(order, format: :json)
