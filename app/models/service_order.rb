class ServiceOrder < ApplicationRecord
  belongs_to :stlservice
  belongs_to :invoice
end
