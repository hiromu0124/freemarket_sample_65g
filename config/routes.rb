Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'phone-number', to: 'users/registrations#new_phone_number'
    get 'street-address', to: 'users/registrations#new_street_address'
    get 'payment', to: 'users/registrations#new_payment'
    get 'done', to: 'users/registrations#done'
  end
  root to: 'products#index'
  resources :products, only: [:index, :new, :show, :create]
  resources :users, only: [:index, :show]
  resources :product_comments, only: [:new,:create]
  resources :creditcards, only: [:index, :new, :create]
  get "RedBull", to:"users#edit2"
  post "create2", to:"products#create2"
end

