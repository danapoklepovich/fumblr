Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  get 'dashboard', to: 'users#dashboard'

  resources :posts

  get 'u/:username', to: 'users#show', as: 'user'
  post 'u/:username/follow', to: 'users#follow', as: 'follow'
  get 'users/index', to: 'users#index', as: 'users'
  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
