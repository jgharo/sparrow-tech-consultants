class SupportingCompany < ApplicationRecord
  belongs_to :scpaymentinfo
  belongs_to :stlservice

  validates :supportingcomp_name, presence: true
  Validates :supportingcomp_email, presence: true
end
