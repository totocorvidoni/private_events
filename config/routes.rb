Rails.application.routes.draw do
  get 'invitations/new'
  root 'events#index'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create]
  resources :events, only: [:index, :show, :new, :create]
  resources :invitations, only: [:new, :create]
  resources :attendances, only: :create
end
