class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_one_attached :photo
  validates :name, :category, :description, :price, presence: true

  def self.search(query, user_id)
    if query
      query = query.downcase
      Boat.where("LOWER(description) LIKE '%#{query}%'")
          .or(Boat.where("LOWER(name) LIKE '%#{query}%'"))
          .or(Boat.where("LOWER(category) LIKE '%#{query}%'"))
          .and(Boat.where("user_id != ?", user_id))
    else
      Boat.where("user_id != ?", user_id)
    end
  end
end
