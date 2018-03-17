json.extract! product, :id, :name, :description, :price, :weight, :unit_id, :created_at, :updated_at
json.url product_url(product, format: :json)
