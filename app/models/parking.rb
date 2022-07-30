class Parking < ApplicationRecord
  validates :number, :name, :location, presence: true
  validates :number, uniqueness: true
end
