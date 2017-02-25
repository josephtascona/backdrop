Rails.application.routes.draw do
  root 'images#index'
  resources :images do
    member do
      get "like", to: "images#upvote"
      get "dislike", to: "images#downvote"
    end
    collection do
      get 'search'
    end
  end
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
