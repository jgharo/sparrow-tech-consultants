class CreateProdStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :prod_statuses do |t|
      t.string :prod_status

      t.timestamps
    end
  end
end
