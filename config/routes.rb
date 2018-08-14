Rails.application.routes.draw do
  resource :sessions, only: [:new, :create, :destroy]
  resources :users_pictures
  resources :comments
  resources :pictures
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
