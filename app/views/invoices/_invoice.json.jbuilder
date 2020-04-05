json.extract! invoice, :id, :date_updated, :invoice_status, :stlclient_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
