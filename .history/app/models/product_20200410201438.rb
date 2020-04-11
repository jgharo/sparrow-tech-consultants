class Product < ApplicationRecord
  belongs_to :prodcategory
  belongs_to :prodstatus
  belongs_to :supplier

  validates :product_name, presence: true, length: {maximum: 30}, on: :create, allow_nil: false
  validates :product_description, presence: true, length: {maximum: 140}, on: :create, allow_nil: false
  validates :product_cost, presence: true
  validates :prodcategory, presence: true
  validates :prodstatus, presence: true
  validates :date_modified, presence: true
end
