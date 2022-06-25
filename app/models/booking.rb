class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  validates :start_date, :end_date, :status, presence: true

  def total_cost
    num_days = (end_date - start_date).to_i / 86400
    num_days * boat.price
  end

end
