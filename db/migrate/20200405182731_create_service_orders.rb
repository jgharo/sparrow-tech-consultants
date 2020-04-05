class CreateServiceOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :service_orders do |t|
      t.decimal :service_cost_total
      t.references :stlservice, null: false, foreign_key: true
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
