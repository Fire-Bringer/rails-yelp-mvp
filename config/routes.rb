Rails.application.routes.draw do
  # See the index of all restaurants
  get 'restaurants', to: 'restaurants#index', as: 'restaurants'

  # Create a new restaurant
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  post 'restaurants', to: 'restaurants#create'

  # See one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # resources :restaurants
end
