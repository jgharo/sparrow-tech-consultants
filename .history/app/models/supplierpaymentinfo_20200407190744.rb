class Supplierpaymentinfo < ApplicationRecord
    belongs_to :supplier

    validates :payment_address, presence: true
    validates :account_name, presence: true
    validates :account_number, presence: true
      t.integer :routing_number
end
