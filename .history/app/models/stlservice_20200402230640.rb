class Stlservice < ApplicationRecord
  belongs_to :servcategory
  belongs_to :servstatus
  belongs_to :supporting_company

  Stlservice.find_by servcategory: 'Transportation'
end
