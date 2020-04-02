class RemoveSupplierpaymentinfoFromSuppliers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :suppliers, :supplierpaymentinfo, null: false, foreign_key: true
  end
end
