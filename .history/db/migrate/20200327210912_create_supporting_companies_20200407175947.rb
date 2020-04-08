class CreateSupportingCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :supporting_companies do |t|
      t.string :supportingcomp_name
      t.string :supportingcomp_phone
      t.string :supportingcomp_email
      t.text :supportingcomp_address


      t.timestamps
    end
  end
end
