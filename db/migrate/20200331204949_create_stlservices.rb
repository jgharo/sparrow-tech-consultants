class CreateStlservices < ActiveRecord::Migration[6.0]
  def change
    create_table :stlservices do |t|
      t.string :service_name
      t.text :service_description
      t.decimal :service_cost
      t.references :servcategory, null: false, foreign_key: true
      t.references :servstatus, null: false, foreign_key: true
      t.date :date_modified

      t.timestamps
    end
  end
end
