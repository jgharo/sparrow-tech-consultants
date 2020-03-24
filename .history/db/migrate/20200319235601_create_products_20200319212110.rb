class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_description
      t.decimal :product_cost
      t.string :product_category
      t.string :product_status
      t.date :date_modified

      t.timestamps
    end
  end
end
