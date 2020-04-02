json.extract! supplier, :id, :supplier_name, :supplier_email, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
