Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show]
  resources :riders, only: [:index]
  resources :users, only: [:index, :show, :update, :create, :destroy]
end
