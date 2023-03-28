Rails.application.routes.draw do
  resources :cars, only: [:index, :show]
  resources :favorites, only: [:create, :destroy]
end
