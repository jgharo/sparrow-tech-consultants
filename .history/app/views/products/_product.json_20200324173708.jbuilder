json.extract! product, :id, :product_name, :product_description, :product_cost, :prod_category_id, :prod_status_id, :date_modified, :created_at, :updated_at
json.url product_url(product, format: :json)
