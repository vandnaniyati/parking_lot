class Spot < ApplicationRecord
  belongs_to :parking

  has_and_belongs_to_many :near_by_entry_points, join_table: :entry_points_spots
end
