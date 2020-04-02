class AddSupplierToSupplierpaymentinfo < ActiveRecord::Migration[6.0]
  def change
    add_reference :supplierpaymentinfos, :supplier, null: false, foreign_key: true
  end
end
