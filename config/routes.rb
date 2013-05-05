Hackathon::Application.routes.draw do

  root to: 'site#index'

  # Registration
  resources :users, except: :destroy
  get 'signup' => 'users#new', as: 'signup'
  
  #Authentication
  get 'login' => 'sessions#new', as: 'login'
  delete 'logout' => 'sessions#destroy', as: 'logout'

  #Restfull routes
  resources :sessions, only: [:new, :create, :destroy]
  resources :issues, except: :destroy
end
