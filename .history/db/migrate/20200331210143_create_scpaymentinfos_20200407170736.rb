class CreateScpaymentinfos < ActiveRecord::Migration[6.0]
  def change
    create_table :scpaymentinfos do |t|
      t.text :payment_address
      t.string :account_name
      t.integer :account_number
      t.integer :routing_number
      t.references :supporting_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
