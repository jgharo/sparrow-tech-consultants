json.extract! supplier, :id, :supplier_name, :supplier_email, :product_id, :supplierpaymentinfo_id, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
