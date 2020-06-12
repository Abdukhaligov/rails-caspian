Rails.application.routes.draw do
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
