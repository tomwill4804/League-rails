Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :games
  resources :positions
  resources :notifications
  resources :teams

  resources :users
  get    'login'   => 'users#login'

end
