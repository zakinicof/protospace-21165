Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :prototypes
  resources :comments, only: :create

  resources :users, only: :show
  
end
