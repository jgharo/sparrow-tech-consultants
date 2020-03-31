class Supplier < ApplicationRecord
  belongs_to :product
  belongs_to :supplierpaymentinfo
end
