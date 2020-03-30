class Stlclient < ApplicationRecord
  belongs_to :employee

  validates :employee_fname, presence: true
  
end
