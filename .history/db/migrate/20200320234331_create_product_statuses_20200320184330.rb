class CreateProductStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :product_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
