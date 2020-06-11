Rails.application.routes.draw do
  resources :events_users
  resources :event_users
  resources :memberships
  resources :events
  resources :regions
  resources :references
  resources :users
  resources :degrees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
