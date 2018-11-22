Rails.application.routes.draw do

  get 'events/index'
  get 'events/show'
  get 'events/new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create]
  resources :events, only: [:index, :show, :new, :create]

end
