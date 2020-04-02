class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :supplier_name
      t.string :supplier_email
      t.references :product, null: false, foreign_key: true
      t.references :supplierpaymentinfo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
