Rails.application.routes.draw do
  devise_for :users
  root to: "spaceflights#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :spaceflights do
    resources :bookings, only: :create
  end
  # get '/spaceflights/:id', to: 'spaceflights#show', as: :spaceflight
  # get '/spaceflights/new', to: 'spaceflight#new'
  # post '/spaceflight/create', to: 'spaceflight#create'
end
