Rails.application.routes.draw do

  resources :user_memberships
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'

  resources :reports
  resources :sponsors
  resources :partners
  resources :news
  resources :documents
  resources :topics
  resources :vouchers
  resources :events_users
  resources :memberships
  resources :events
  resources :regions
  resources :references
  resources :users
  resources :degrees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
