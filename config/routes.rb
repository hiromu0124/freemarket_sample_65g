Rails.application.routes.draw do
  root  'products#index'
  resources :products, only: [:index, :new, :show]
  resources :users, only: [:show]
  get "RedBull", to: "users#edit2"
end
