class Note < ApplicationRecord
  belongs_to :invoice

  validates :comment, presence: true, length: {maximum: 125}, on: :create, allow_nil: false
end
