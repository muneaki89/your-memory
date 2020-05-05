Rails.application.routes.draw do
  devise_for :users
  root "lists#index"
  resources :users, only: [:edit, :update]
  resources :lists, only: [:show]
end
