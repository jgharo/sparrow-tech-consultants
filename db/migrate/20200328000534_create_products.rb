class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_description
      t.decimal :product_cost
      t.references :prodcategory, null: false, foreign_key: true
      t.references :prodstatus, null: false, foreign_key: true
      t.date :date_modified

      t.timestamps
    end
  end
end
