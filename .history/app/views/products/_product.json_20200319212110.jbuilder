json.extract! product, :id, :product_name, :product_description, :product_cost, :product_category, :product_status, :date_modified, :created_at, :updated_at
json.url product_url(product, format: :json)
