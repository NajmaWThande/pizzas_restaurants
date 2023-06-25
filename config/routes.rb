Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :destroy, :create]
  resources :pizzas, only: [:index, :show]
  resources :restaurant_pizzas, only: [:create, :destroy, :show, :index]
end
