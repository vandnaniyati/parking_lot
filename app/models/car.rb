class Car < ApplicationRecord
  has_many :tickets

  validates :registration_number, presence: true
  validates :color, presence: true
end
