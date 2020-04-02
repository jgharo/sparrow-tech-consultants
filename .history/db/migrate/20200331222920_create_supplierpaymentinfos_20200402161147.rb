class CreateSupplierpaymentinfos < ActiveRecord::Migration[6.0]
  def change
    create_table :supplierpaymentinfos do |t|
      t.text :payment_address
      t.string :account_name
      t.integer :account_number
      t.integer :routing_number
      t.integer :aba_number
      t.string :swift_code
      t.references :supplier_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
