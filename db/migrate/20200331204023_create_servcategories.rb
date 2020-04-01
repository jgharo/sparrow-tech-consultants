class CreateServcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :servcategories do |t|
      t.string :category

      t.timestamps
    end
  end
end
