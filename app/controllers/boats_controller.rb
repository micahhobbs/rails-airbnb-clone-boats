class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
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

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :category, :price)
  end
end
