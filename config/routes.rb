Rails.application.routes.draw do
  resources :authors
  get 'home/index'
  
  root 'home#index'
end
