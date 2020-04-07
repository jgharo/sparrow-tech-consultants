class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :supplier_name
      t.string :supplier_email

      t.timestamps
    end
  end
end
