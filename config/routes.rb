Rails.application.routes.draw do
  get 'lists/index'

  root "lists#index"
end
