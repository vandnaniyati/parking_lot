class Parking < ApplicationRecord
  has_many :entry_points, dependent: :delete_all

  validates :number, :name, :location, presence: true
  validates :number, uniqueness: true
end
