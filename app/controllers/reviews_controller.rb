# Frozen-String-Literal: true

# Reviews Controller
class ReviewsController < ApplicationController
  # To find the restaurant associated with the review
  before_action :set_restaurant, only: %i[new create]

  def new
    # We need @restaurant in our 'simple_form_for'
    # The below line finds target by the ID within the URL
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # @review.restaurant.id = @restaurant.id
    # SAME AS LINE BELOW
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end
end

private

# Security Params
def review_params
  params.require(:review).permit(:content, :rating)
end

# Refactor Definition
def set_restaurant
  @restaurant = Restaurant.find(params[:restaurant_id])
end
