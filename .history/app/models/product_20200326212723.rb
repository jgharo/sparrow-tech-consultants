class Product < ApplicationRecord
  belongs_to :category
  belongs_to :status

  # Abbreviate :prod_categories and :prod_status
  ransack_alias :category, :prod_category
  ransack_alias :status, :prod_status
end
