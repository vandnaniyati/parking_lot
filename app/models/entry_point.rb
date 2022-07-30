class EntryPoint < ApplicationRecord
  belongs_to :parking

  has_and_belongs_to_many :spots
  # has_and_belongs_to_many :nearby_spots, join_table: :entry_points_spots

  validates :number, presence: true
end
