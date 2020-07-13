Rails.application.routes.draw do
  resources :articles

  devise_for :users
  get 'homepage/index'
  
  root 'homepage#index'
end
