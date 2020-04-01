class Product < ApplicationRecord
    has_many :product_categories :product_statuses
end
