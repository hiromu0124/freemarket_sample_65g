Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  root to: 'products#index'
  resources :products, only: [:index, :new, :show, :create]
  resources :users, only: [:show]

  get "RedBull", to:"users#edit2"
end
