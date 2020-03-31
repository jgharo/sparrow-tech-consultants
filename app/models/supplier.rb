class Supplier < ApplicationRecord
  belongs_to :product
  belongs_to :supplierpaymentinfo

  validates :supplier_name, presence: true
  validates :supplier_email, presence: true
  validates :product, presence: true
  validates :supplierpaymentinfo, presence: true

  #rename attributes in error message
  HUMANIZED_ATTRIBUTES = {
    :supplier_name => "Name",
    :supplier_email => "Email",
    :product => "Product",
    :supplierpaymentinfo => "Payment Info"
  }

  def self.human_attribute_name(attr, options = {}) # 'options' wasn't available in Rails 3, and prior versions.
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
