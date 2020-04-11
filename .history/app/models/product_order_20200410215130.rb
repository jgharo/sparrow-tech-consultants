class ProductOrder < ApplicationRecord
  belongs_to :product
  belongs_to :invoice
  before_save :calculate_product_cost_total

  def calculate_product_cost_total
    self.product_cost_total = self.product_quantity * self.product.product_cost
  end
end
