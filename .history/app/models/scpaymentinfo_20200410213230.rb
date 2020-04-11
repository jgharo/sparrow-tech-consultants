class Scpaymentinfo < ApplicationRecord
    belongs_to :supporting_company

    validates :payment_address, presence: true, length: {maximum: 250}, on: :create, allow_nil: false
    validates :account_name, presence: true, length: {maximum: 30}, on: :create, allow_nil: false
    validates :account_number, presence: true, length: {maximum: 4}, on: :create, allow_nil: false
    validates :routing_number, presence: true, length: {maximum: 9}, on: :create, allow_nil: false
end
