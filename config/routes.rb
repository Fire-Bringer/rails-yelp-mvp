Rails.application.routes.draw do
  # See the index of all restaurants
  get 'restaurants', to: 'restaurants#index', as: 'restaurants'

  # resources :restaurants
end
