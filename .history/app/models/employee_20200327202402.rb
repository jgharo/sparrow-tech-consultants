class Employee < ApplicationRecord
    validates :employee_fname, presence: true, {message: "First name can't be blank"}
    validates :employee_lname, presence: true
    validates :employee_email, presence: true
    validates :employee_salary, presence: true
    validates :employee_hiredate, presence: true
end
