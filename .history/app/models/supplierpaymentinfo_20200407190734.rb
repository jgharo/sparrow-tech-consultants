class Supplierpaymentinfo < ApplicationRecord
    belongs_to :supplier

    validates :payment_address, presence: true
    validates :account_name, presence: true
      t.integer :account_number
      t.integer :routing_number
end
