Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  root to: 'products#index'
  resources :products, only: [:index, :new, :show, :create]
  resources :users, only: [:edit, :show]
  get "RedBull", to:"users#edit2"
  
  # root to: 'identification#index'
  # resources :identification, only: [:index, :show, :updata]
end
