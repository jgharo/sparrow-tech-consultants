json.extract! scpaymentinfo, :id, :payment_address, :account_name, :account_number, :routing_number, :aba_number, :swift_code, :created_at, :updated_at
json.url scpaymentinfo_url(scpaymentinfo, format: :json)
