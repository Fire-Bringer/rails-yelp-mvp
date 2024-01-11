# frozen-string-literal: true

# Restaurants Controller
class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end
