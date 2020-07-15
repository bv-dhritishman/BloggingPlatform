Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :articles

  devise_for :users, controllers: {omniauth_callbacks: 'omniauth', sessions: "sessions"}
  get 'homepage/index'

  get '/auth/:provider/callback' => 'sessions#omniauth'

  root 'homepage#index'
end
