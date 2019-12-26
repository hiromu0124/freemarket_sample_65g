Rails.application.routes.draw do
  
  devise_for :users
  root to: 'products#index'
  resources :products, only: [:index, :new, :show]
  resources :users, only: [:show]

  get "RedBull", to:"users#edit2"
end
