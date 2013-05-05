Hackathon::Application.routes.draw do

  root to: 'site#index'

  #Registration
  get 'signup' => 'users#new', as: 'signup'
  
  #Authentication
  get 'login' => 'sessions#new', as: 'login'
  delete 'logout' => 'sessions#destroy', as: 'logout'

  #Restfull routes
  resources :sessions, only: :create
  resources :issues, except: :destroy
end