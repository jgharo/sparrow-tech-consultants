class Stlservice < ApplicationRecord
  belongs_to :servcategory
  belongs_to :servstatus

  has_many :supporting_companies
end
