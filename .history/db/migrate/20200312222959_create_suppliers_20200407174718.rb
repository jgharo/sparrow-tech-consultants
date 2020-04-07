class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :supplier_name
      t.string :supplier_phone
      t.email :supplier_email
      t.text :supplier_address

      t.timestamps
    end
  end
end
