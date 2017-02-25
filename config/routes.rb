Rails.application.routes.draw do
  root 'images#index'
  devise_for :users
  resources :users, only: [:show, :index]
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
