class Scpaymentinfo < ApplicationRecord
    belongs_to :supporting_company, inverse_of: :scpaymentinfos
end
