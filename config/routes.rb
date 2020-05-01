Rails.application.routes.draw do
  devise_for :users
  get 'lists/index'

  root "lists#index"
end
