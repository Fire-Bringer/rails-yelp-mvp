# frozen-string-literal: true

# Restaurants Controller
class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end

private

# Security Params
def restaurant_params
  params.require(:restaurant).permit(:name, :address, :category)
end
