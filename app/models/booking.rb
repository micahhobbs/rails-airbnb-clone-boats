require 'date'

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  validates :start_date, :end_date, :status, presence: true
  validate :overlap_dates, :valid_range, on: :create

  def total_cost
    num_days = ((end_date - start_date).to_i) / 86400 + 1
    num_days * boat.price
  end

  def self.completed_or_expired
    Booking.all.each do |booking|
      if booking.start_date < Date.today
        if booking.status == 'Approved' || booking.status == 'Completed'
          booking.status = 'Completed'
        else
          booking.status = 'Expired'
        end
        booking.save!
      end
    end
  end

  def overlap_dates
    overlapping_bookings = boat.bookings.select {|booking| booking.start_date <= end_date && start_date <= booking.end_date }
    if overlapping_bookings.length != 0
      errors.add(:unavailable, "Boat is unavailable for these dates")
    end
  end

  def past_date
    if start_date < Date.today
      errors.add(:past, "Cannot select date in the past")
    end
  end

  def valid_range
    if start_date > end_date
      errors.add(:invalid_range, "Start date cannot be before end date")
    end
  end

end
