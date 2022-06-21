class BoatsController < ApplicationController
  def index

  end

  def show
    @boat = Boat.find(params[:id])
  end
end
