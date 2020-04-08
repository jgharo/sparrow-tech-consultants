class CreateSupplierpaymentinfos < ActiveRecord::Migration[6.0]
  def change
    create_table :supplierpaymentinfos do |t|
      t.text :payment_address
      t.string :account_name
      t.integer :account_number
      t.integer :routing_number
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
