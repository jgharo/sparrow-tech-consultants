class Product < ApplicationRecord
  belongs_to :prodcategory
  belongs_to :prodstatus

  validates :product_name, presence: true
  validates :product_description, presence: true
  validates :product_cost, presence: true
end
