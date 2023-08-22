Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users, only: [:show]

  resources :vinyls do
    resources :bookings
  end
  get '/dashboard', to: 'users#dashboard'
end
