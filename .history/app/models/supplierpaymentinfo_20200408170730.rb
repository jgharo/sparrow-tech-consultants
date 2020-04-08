class Supplierpaymentinfo < ApplicationRecord
    belongs_to :supplier

    validates :payment_address, presence: true
    validates :account_number, presence: true
    validates :routing_number, presence: true
end
