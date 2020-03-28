class Product < ApplicationRecord
  belongs_to :prodcategory
  belongs_to :prodstatus

  validates :product_name, presence: true
  validates :product_description, presence: true
  validates :product_cost, presence: true

  #rename attributes in error message
  HUMANIZED_ATTRIBUTES = {
    :employee_fname => "First Name",
    :employee_lname => "Last Name",
    :employee_email => "Email",
    :employee_salary => "Salary"
  }

  def self.human_attribute_name(attr, options = {}) # 'options' wasn't available in Rails 3, and prior versions.
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
