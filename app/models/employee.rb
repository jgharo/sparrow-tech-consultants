class Employee < ApplicationRecord
    has_many :stlclients, dependent: :destroy
    
    validates :employee_fname, presence: true, length: {maximum: 30}, on: :create, allow_nil: false
    validates :employee_lname, presence: true, length: {maximum: 30}, on: :create, allow_nil: false
    validates :employee_email, presence: true, length: {maximum: 125}, on: :create, allow_nil: false
    validates :employee_salary, presence: true
    validates :employee_hiredate, presence: true

    #rename attributes in error message
    HUMANIZED_ATTRIBUTES = {
        :employee_fname => "First Name",
        :employee_lname => "Last Name",
        :employee_email => "Email",
        :employee_salary => "Salary",
        :employee_hiredate => "Hire Date"
      }

    
      def self.human_attribute_name(attr, options = {}) # 'options' wasn't available in Rails 3, and prior versions.
        HUMANIZED_ATTRIBUTES[attr.to_sym] || super
      end
end
