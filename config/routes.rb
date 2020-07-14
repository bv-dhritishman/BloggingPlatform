Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'authors#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :authors
  get 'home/index'
  
  root 'home#index'
end
