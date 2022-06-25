class BoatsController < ApplicationController
  def index
    # Browse page shows all boats except for user's boats
    # @boats = Boat.where("user_id != ?", current_user.id)
    if params.key?(:query)
      @boats = Boat.search(params[:query], current_user.id)
    else
      @boats = Boat.search(nil, current_user.id)
    end
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

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to my_boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :photo, :category, :price)
  end

  def search_params
    params.permit(:query)
  end
end
