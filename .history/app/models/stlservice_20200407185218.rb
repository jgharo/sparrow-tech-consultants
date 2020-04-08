class Stlservice < ApplicationRecord
  belongs_to :servcategory
  belongs_to :servstatus
  belongs_to :supporting_company

  validates :service_name, presence: true
  validates :service_description, presence: true
  validates :service_cost, presence: true
      t.references :servcategory, null: false, foreign_key: true
      t.references :servstatus, null: false, foreign_key: true
      t.date :date_modified
      t.references :supporting_company,
end
