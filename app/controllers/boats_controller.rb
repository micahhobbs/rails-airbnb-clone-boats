class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to @boat
    else
      render :new
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update(boat_params)
      redirect_to my_boats_path
    else
      render :edit
    end
  end

  def my_boats
    @boats = current_user.boats
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :category, :price)
  end
end
