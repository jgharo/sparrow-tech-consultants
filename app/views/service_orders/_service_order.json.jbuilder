json.extract! service_order, :id, :service_cost_total, :stlservice_id, :invoice_id, :created_at, :updated_at
json.url service_order_url(service_order, format: :json)
