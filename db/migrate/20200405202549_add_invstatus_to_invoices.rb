class AddInvstatusToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_reference :invoices, :invstatus, null: false, foreign_key: true
  end
end
