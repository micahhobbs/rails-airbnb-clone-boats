class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @boat = Boat.find(params[:boat_id])
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @review = Review.new(review_params)
    @review.user_id = current_user
    @review.boat_id = Boat.find(params[:boat_id])
    @review.save
    redirect_to boat_path(@boat)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
