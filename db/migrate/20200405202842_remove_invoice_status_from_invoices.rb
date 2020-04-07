class RemoveInvoiceStatusFromInvoices < ActiveRecord::Migration[6.0]
  def change

    remove_column :invoices, :invoice_status, :text
  end
end
