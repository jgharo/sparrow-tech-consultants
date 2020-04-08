class Product < ApplicationRecord
  belongs_to :prodcategory
  belongs_to :prodstatus
  belongs_to :supplier

  validates :product_name, presence: true
      t.text :product_description
      t.decimal :product_cost
      t.references :prodcategory, null: false, foreign_key: true
      t.references :prodstatus, null: false, foreign_key: true
      t.date :date_modified
end
