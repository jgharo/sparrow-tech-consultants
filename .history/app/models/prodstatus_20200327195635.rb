class Prodstatus < ApplicationRecord
    has_many :products

    validates :status, presence: true
end
