class Spot < ApplicationRecord
  belongs_to :parking

  has_and_belongs_to_many :entry_points
  # has_and_belongs_to_many :nearby_entry_points, join_table: :entry_points_spots

  validates :number, presence: true
end
