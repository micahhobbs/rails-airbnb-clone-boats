class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :category, :description, :price, presence: true
end
