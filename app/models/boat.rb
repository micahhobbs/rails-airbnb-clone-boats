class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :name, :category, :description, :price, presence: true

  def if_available(start_date, end_date)
    start_date = Date.parse start_date
    end_date = Date.parse end_date
    overlapping_bookings = bookings.select {|booking| booking.start_date <= end_date && start_date <= booking.end_date }
    return overlapping_bookings.length == 0
  end

  def self.search(query, start_date, end_date, user_id)
    results = Boat.where("user_id != ?", user_id)
    if query
      query = query.downcase
      results = results.where("LOWER(description) LIKE '%#{query}%'").or(results.where("LOWER(name) LIKE '%#{query}%'"))
                        .or(results.where("LOWER(category) LIKE '%#{query}%'"))
    end

    if start_date.length > 0 && end_date.length > 0
      results = results.select {|boat| boat.if_available(start_date, end_date)}
    end

    return results
  end
end
