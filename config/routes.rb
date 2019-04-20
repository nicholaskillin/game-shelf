Rails.application.routes.draw do
  
  get 'sessions/new'
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources  :users
  resources  :password_resets, only: [:new, :create, :edit, :update]
  resources :account_activations, only: [:edit]
end
