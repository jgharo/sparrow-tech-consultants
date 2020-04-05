class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.date :date_updated
      t.text :invoice_status
      t.references :stlclient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
