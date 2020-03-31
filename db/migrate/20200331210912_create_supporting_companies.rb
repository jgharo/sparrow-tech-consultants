class CreateSupportingCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :supporting_companies do |t|
      t.string :supportingcomp_name
      t.string :supportingcomp_email
      t.references :scpaymentinfo, null: false, foreign_key: true
      t.references :stlservice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
