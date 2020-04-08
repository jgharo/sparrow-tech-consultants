class Stlservice < ApplicationRecord
  belongs_to :servcategory
  belongs_to :servstatus
  belongs_to :supporting_company

  validates :service_name, presence: true
  validates :service_description, presence: true
  validates :service_cost, presence: true
  validates :servcategory, presence: true
  validates :servstatus, presence: true
  validates :date_modified, presence: true
  validates :supporting_company, presence: true
end
