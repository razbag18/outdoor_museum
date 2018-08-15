Rails.application.routes.draw do
  root 'homepage#index'
  resource :sessions, only: [:new, :create, :destroy]
  resources :users_pictures
  resources :comments
  resources :pictures
  resources :users
  resources :search, only: [:index]

  get '/home/userdashboard', to: 'homepage#user_dashboard'

  get '/update_pictures', to: 'api/pictures#update_pictures'
  
  post '/submit_rating', to: 'api/users_pictures#update_rating'
  post '/toggle_favourites', to: 'api/users_pictures#toggle_favourites'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

