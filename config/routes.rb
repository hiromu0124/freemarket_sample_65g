Rails.application.routes.draw do
  
  devise_for :users
  root to: 'products#index'
  resources :products, only: [:index, :new, :show, :create]
  resources :users, only: [:show]
  resources :product_comments, only: [:new,:create]
  get "RedBull", to:"users#edit2"
  post "create2", to:"products#create2"
end
