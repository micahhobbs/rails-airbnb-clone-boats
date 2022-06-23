require 'date'


class BookingsController < ApplicationController
  def my_bookings
    @my_bookings = Booking.all.select { |booking| booking.user_id == current_user.id }
  end

  def bookings_on_my_boats
    my_boat_ids = current_user.boats.map {|boat| boat.id }
    @bookings_on_my_boats = Booking.all.select { |booking| my_boat_ids.include? booking.boat_id }
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.boat_id = params[:boat_id]
    @booking.start_date = Date.parse booking_params[:start_date]
    @booking.end_date = Date.parse booking_params[:end_date]
    @booking.status = "Pending"
    if @booking.save
      redirect_to my_bookings_path
    else
      redirect_to boats_path
    end
  end

  private

  def booking_params
    params[:booking].permit(:start_date, :end_date)
  end
end
