class CreateStlclients < ActiveRecord::Migration[6.0]
  def change
    create_table :stlclients do |t|
      t.string :client_fname
      t.string :client_lname
      t.string :client_email
      t.string :client_phonenumber
      t.string :client_companyname
      t.string :client_shippingaddress
      t.string :client_billingaddress
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
