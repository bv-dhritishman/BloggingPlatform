Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :articles

  devise_for :users
  get 'homepage/index'

  root 'homepage#index'
end
