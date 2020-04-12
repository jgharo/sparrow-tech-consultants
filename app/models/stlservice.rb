class Stlservice < ApplicationRecord
  belongs_to :servcategory
  belongs_to :servstatus
  belongs_to :supporting_company
  has_many :service_orders, dependent: :destroy

  validates :service_name, presence: true, length: {maximum: 30}, on: :create, allow_nil: false
  validates :service_description, presence: true, length: {maximum: 140}, on: :create, allow_nil: false
  validates :service_cost, presence: true
  validates :servcategory, presence: true
  validates :servstatus, presence: true
  validates :date_modified, presence: true
end