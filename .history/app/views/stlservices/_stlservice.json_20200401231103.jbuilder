json.extract! stlservice, :id, :service_name, :service_description, :service_cost, :servcategory_id, :servstatus_id, :date_modified, :supporting_company_id, :created_at, :updated_at
json.url stlservice_url(stlservice, format: :json)
