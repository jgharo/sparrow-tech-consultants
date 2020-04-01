class CreateProdstatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :prodstatuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
