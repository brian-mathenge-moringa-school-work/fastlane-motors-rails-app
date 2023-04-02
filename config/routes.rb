Rails.application.routes.draw do
  resources :cars, only: [:index, :show]
  resources :favorites, only: [:create, :destroy]
  resources :users, only: [:index, :show, :create]
  resources :sessions, only: [:create, :show, :destroy]
end
