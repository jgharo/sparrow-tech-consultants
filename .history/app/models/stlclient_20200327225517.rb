class Stlclient < ApplicationRecord
  belongs_to :employee

  validates :client_fname, presence: true
  validates :client_lname, presence: true
  validates :client_email, presence: true
  validates :client_phonenumber, presence: true
  validates :client_companyname, presence: true
  validates :client_shippingaddress, presence: true
  validates :client_billingaddress, presence: true
      
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
