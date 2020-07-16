Rails.application.routes.draw do
  devise_config = ActiveAdmin::Devise.config
  devise_config[:controllers][:omniauth_callbacks] = 'omniauth_callback'
  devise_for :admin_users, devise_config

  ActiveAdmin.routes(self)
  
  resources :articles

  devise_for :users
  get 'homepage/index'

  root 'homepage#index'
end
