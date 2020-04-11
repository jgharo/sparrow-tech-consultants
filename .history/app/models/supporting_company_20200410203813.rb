class SupportingCompany < ApplicationRecord
  has_many :scpaymentinfos, inverse_of: :supporting_company, dependent: :destroy
  accepts_nested_attributes_for :scpaymentinfos, reject_if: :all_blank, allow_destroy: true
  
  has_many :stlservices, inverse_of: :supporting_company, dependent: :destroy
  accepts_nested_attributes_for :stlservices, reject_if: :all_blank, allow_destroy: true
  
  validates :supportingcomp_name, presence: true, length: {maximum: 30}, on: :create, allow_nil: false
  validates :supportingcomp_phone, presence: true, length: {maximum: 12}, on: :create, allow_nil: false
  validates :supportingcomp_email, presence: true, length: {maximum: 125}, on: :create, allow_nil: false
  validates :supportingcomp_address, presence: true, length: {maximum: 250}, on: :create, allow_nil: false

  #rename attributes in error message
  HUMANIZED_ATTRIBUTES = {
    :supportingcomp_name => "Name",
    :supportingcomp_email => "Email"
  }
  
  def self.human_attribute_name(attr, options = {}) # 'options' wasn't available in Rails 3, and prior versions.
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
