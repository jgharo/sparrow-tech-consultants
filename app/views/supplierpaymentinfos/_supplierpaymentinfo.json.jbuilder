json.extract! supplierpaymentinfo, :id, :payment_address, :account_name, :account_number, :routing_number, :aba_number, :swift_code, :supplier_id, :created_at, :updated_at
json.url supplierpaymentinfo_url(supplierpaymentinfo, format: :json)
