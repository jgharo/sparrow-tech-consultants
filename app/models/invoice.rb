class Invoice < ApplicationRecord
  belongs_to :stlclient
  has_many :notes
  has_many :product_orders
  has_many :service_orders
end
