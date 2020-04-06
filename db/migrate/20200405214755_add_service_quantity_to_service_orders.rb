class AddServiceQuantityToServiceOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :service_orders, :service_quantity, :integer
  end
end
