json.extract! stlclient, :id, :client_fname, :client_lname, :client_email, :client_phonenumber, :client_companyname, :client_shippingaddress, :client_billingaddress, :employee_id, :created_at, :updated_at
json.url stlclient_url(stlclient, format: :json)
