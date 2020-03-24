class Product < ApplicationRecord
  belongs_to :prod_category
  belongs_to :prod_status
end
