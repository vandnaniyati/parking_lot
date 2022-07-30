class Ticket < ApplicationRecord
  belongs_to :parking
  belongs_to :entry_point
  belongs_to :spot
  belongs_to :car

  accepts_nested_attributes_for :car
end
