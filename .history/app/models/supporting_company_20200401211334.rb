class SupportingCompany < ApplicationRecord
  belongs_to :scpaymentinfo
  belongs_to :stlservice

  has_many :stlservices
  has_many :scpaymentinfos

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
