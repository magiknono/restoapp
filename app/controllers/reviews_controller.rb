class ReviewsController < ApplicationController

def new
  @review = Review.new
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def create

  @review = Review.new(restaurant_id: params[:restaurant_id], content: params[:content], rating: params[:rating])
  @review.save
  redirect_to restaurants_path
end

def review_params
    params.require(:review).permit(:content,:rating)
  end
end
