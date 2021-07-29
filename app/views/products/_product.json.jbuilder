json.extract! product, :id, :type, :maker, :location, :price, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
