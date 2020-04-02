class RemoveProductFromSuppliers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :suppliers, :product, null: false, foreign_key: true
  end
end
