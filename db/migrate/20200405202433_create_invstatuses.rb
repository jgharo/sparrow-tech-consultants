class CreateInvstatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :invstatuses do |t|
      t.text :status

      t.timestamps
    end
  end
end
