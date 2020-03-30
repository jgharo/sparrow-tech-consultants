class CreateProdcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :prodcategories do |t|
      t.string :category

      t.timestamps
    end
  end
end
