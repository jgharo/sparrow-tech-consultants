class Scpaymentinfo < ApplicationRecord
    belongs_to :supporting_company

    validates :payment_address, presence: true
    validates :account_name, presence: true
    validates :account_number, presence: true
    validates :routing_number, presence: true
end
