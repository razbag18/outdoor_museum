Rails.application.routes.draw do
  root 'homepage#index'
  resource :sessions, only: [:new, :create, :destroy]
  resources :users_pictures
  resources :comments
  resources :pictures
  resources :users
  resources :search, only: [:index]

  get '/home/userdashboard', to: 'homepage#user_dashboard'

end

