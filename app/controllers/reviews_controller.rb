class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @boat = Boat.find(params[:boat_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.boat = Boat.find(params[:boat_id])
    @review.save
    redirect_to boat_path(@review.boat_id)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
