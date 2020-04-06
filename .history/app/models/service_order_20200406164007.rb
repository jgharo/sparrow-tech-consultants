class ServiceOrder < ApplicationRecord
  belongs_to :stlservice
  belongs_to :invoice

  before_save :calculate_service_cost_total

  def calculate_service_cost_total
    self.service_cost_total = self.service_quantity * stlservice.service_cost
  end
end
