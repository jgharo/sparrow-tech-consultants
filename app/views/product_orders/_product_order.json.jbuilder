json.extract! product_order, :id, :product_quantity, :product_cost_total, :product_id, :invoice_id, :created_at, :updated_at
json.url product_order_url(product_order, format: :json)
