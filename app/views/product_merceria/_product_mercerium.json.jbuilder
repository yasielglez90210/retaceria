json.extract! product_mercerium, :id, :name, :article, :cost, :price, :initial_stock, :minimum, :current_stock, :created_at, :updated_at
json.url product_mercerium_url(product_mercerium, format: :json)
