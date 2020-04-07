json.extract! supplier, :id, :supplier_name, :supplier_phone, :supplier_email, :supplier_address, :updated_at
json.url supplier_url(supplier, format: :json)
