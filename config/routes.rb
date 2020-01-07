Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  root to: 'products#index'
  resources :products, only: [:index, :new, :show, :create]

  resources :users, only: [:edit, :show]
  get "RedBull", to:"users#edit2"
  
  resources :users, only: [:show]
  get "identification", to: "users#identification"

  resources :users, only: [:index, :show]
  resources :product_comments, only: [:new,:create]
  resources :creditcards, only: [:index, :new, :create]

  get "RedBull", to:"users#edit2"
  post "create2", to:"products#create2"

end
