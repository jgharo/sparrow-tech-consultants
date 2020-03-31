json.extract! employee, :id, :employee_fname, :employee_lname, :employee_email, :employee_salary, :employee_hiredate, :created_at, :updated_at
json.url employee_url(employee, format: :json)
