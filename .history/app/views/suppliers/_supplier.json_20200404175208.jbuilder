json.extract! supplier, :id, :supplier_name, :supplier_email, :updated_at
json.url supplier_url(supplier, format: :json)
