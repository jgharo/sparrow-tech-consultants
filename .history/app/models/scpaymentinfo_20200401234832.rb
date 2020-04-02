class Scpaymentinfo < ApplicationRecord
    belongs_to :supporting_company, inverse_of: :scpaymentinfo
end
