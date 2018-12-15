Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'dashboard', to: 'users#dashboard'

  resources :posts
  resources :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
