class CreateProdCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :prod_categories do |t|
      t.string :prod_category

      t.timestamps
    end
  end
end
