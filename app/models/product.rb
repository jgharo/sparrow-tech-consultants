class Product < ApplicationRecord
  belongs_to :prodcategory
  belongs_to :prodstatus
end
