class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :type, :description, :price, presence: true
end
