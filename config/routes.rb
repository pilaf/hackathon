Hackathon::Application.routes.draw do
  root to: 'site#index'

  # Registration
  resources :users, only: [:new, :create, :edit, :update]
  get 'signup' => 'users#new', as: 'signup'

  # Authentication
  resources :sessions, only: :create
  get 'login' => 'sessions#new', as: 'login'
  delete 'logout' => 'sessions#destroy', as: 'logout'
end
