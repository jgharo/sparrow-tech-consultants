class Supplier < ApplicationRecord
  has_many :supplierpaymentinfos, inverse_of: :supplier, dependent: :destroy
  accepts_nested_attributes_for :supplierpaymentinfos, reject_if: :all_blank, allow_destroy: true

  has_many :products, inverse_of: :supplier, dependent: :destroy
  accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true

  validates :supplier_name, presence: true
  validates :supplier_phone, presence: true, length: {maximum: 12}, on: :create, allow_nil: false
  validates :supplier_email, presence: true
  validates :supplier_address, presence: true


  #rename attributes in error message
  HUMANIZED_ATTRIBUTES = {
    :supplier_name => "Name",
    :supplier_email => "Email",
  }

  def self.human_attribute_name(attr, options = {}) # 'options' wasn't available in Rails 3, and prior versions.
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
