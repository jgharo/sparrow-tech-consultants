class Product < ApplicationRecord
    has_many :product_categories 
    has_many :product_status
end
