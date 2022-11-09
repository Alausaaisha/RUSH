Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show] do
    #nested resource for foods
    resources :foods, only: [:show, :index]
  end
  resources :riders, only: [:index]
  resources :users, only: [:index, :show, :update, :create, :destroy]

  post "/login", to: "sessions#create"

  get "/me", to: "users#show"

  delete "/logout", to: "sessions#destroy"
end
