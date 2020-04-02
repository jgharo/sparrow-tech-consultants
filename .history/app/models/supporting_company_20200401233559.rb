class SupportingCompany < ApplicationRecord
  belongs_to :scpaymentinfo
  belongs_to :stlservice

  has_many :scpaymentinfos, inverse_of: :supporting_company
  accepts_nested_attributes_for :scpaymentinfos, reject_if: :all_blank, allow_destroy: true
  
  has_many :stlservices, inverse_of: :supporting_company
  accepts_nested_attributes_for :stlservices, reject_if: :all_blank, allow_destroy: true
  
  validates :supportingcomp_name, presence: true
  validates :supportingcomp_email, presence: true

  #rename attributes in error message
  HUMANIZED_ATTRIBUTES = {
    :supportingcomp_name => "Name",
    :supportingcomp_email => "Email"
  }

  def self.human_attribute_name(attr, options = {}) # 'options' wasn't available in Rails 3, and prior versions.
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
