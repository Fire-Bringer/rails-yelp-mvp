Rails.application.routes.draw do
  # See the index of all restaurants
  get 'restaurants', to: 'restaurants#index', as: 'restaurants'

  # See one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # resources :restaurants
end
