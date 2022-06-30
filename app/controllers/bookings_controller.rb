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
      @booking.errors.each do |_, message|
        flash.alert = message
      end
      redirect_back fallback_location: '/'
    end
  end

  def approve
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Approved"
    @booking.save!
    redirect_back fallback_location: root_path
  end

  def reject
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Rejected"
    @booking.save!
    redirect_back fallback_location: root_path
  end

  def cancel
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Cancelled"
    @booking.save!
    redirect_back fallback_location: root_path
  end

  def calendar
  end

  private

  def booking_params
    params[:booking].permit(:start_date, :end_date)
  end

end
