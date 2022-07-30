class EntryPoint < ApplicationRecord
  belongs_to :parking

  has_and_belongs_to_many :near_by_spots, join_table: :entry_points_spots
end
