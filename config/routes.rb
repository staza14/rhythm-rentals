Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users, only: [:show]

  resources :vinyls do
    collection do
      get :pop
      get :classical
      get :jazz
      get :rock
      get :afrobeat
      get :reggae
      get :hiphop
      get :country
      get :metal
      get :electronic
    end
    resources :bookings, except: [:destroy]
  end
  resources :bookings, only: [:destroy]

  get '/dashboard', to: 'users#dashboard'
  get '/vinyldashboard', to: 'users#vinyldashboard'
end
