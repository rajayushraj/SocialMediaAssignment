Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources:users,only: [:show] do
  	resources:friendships,only: [:create,:destroy]
  end
  resources:posts do
  	resources:comments,only: [:new,:create,:show,:index,:destroy]
  	resources:likes,only: [:create]
  end
end
