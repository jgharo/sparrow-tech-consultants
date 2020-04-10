class Invoice < ApplicationRecord
  belongs_to :stlclient
  belongs_to :invstatus
  belongs_to :tax

  has_many :notes, inverse_of: :invoice, dependent: :destroy
  accepts_nested_attributes_for :notes, reject_if: :all_blank, allow_destroy: true

  has_many :product_orders, inverse_of: :invoice, dependent: :destroy
  accepts_nested_attributes_for :product_orders, reject_if: :all_blank, allow_destroy:true

  has_many :service_orders, inverse_of: :invoice, dependent: :destroy
  accepts_nested_attributes_for :service_orders, reject_if: :all_blank, allow_destroy:true

end
