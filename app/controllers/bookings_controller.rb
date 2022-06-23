class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat = Boat.find(params[:boat_id])
  end

  private

  def booking_params
    params[:booking].permit(:start_date, :end_date)
  end
end
