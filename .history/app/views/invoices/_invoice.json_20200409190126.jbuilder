json.extract! invoice, :id, :date_updated, :invstatus_id, :stlclient_id, :tax, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
