Hackathon::Application.routes.draw do

  get "user/new"
  get "user/create"
  get "user/destroy"
  root to: 'site#index'

  #Registration
  get 'signup' => 'users#new', as: 'signup'
  
  #Authentication
  resources :sessions, only: :create
  get 'login' => 'sessions#new', as: 'login'
  delete 'logout' => 'sessions#destroy', as: 'logout'
end