Hackathon::Application.routes.draw do

  root to: 'site#index'

  # Registration
  resources :users, only: [:new, :create]
  get 'signup' => 'users#new', as: 'signup'

  # Authentication
  get 'login' => 'sessions#new', as: 'login'
  delete 'logout' => 'sessions#destroy', as: 'logout'

  # Restful resources
  resources :sessions, only: [:new, :create, :destroy]
  resources :issues, only: [:index, :show, :new, :create] do
    resources :comments, only: :create
  end
end
