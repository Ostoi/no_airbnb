Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :spaceflights do
    resources :bookings, only: :create
  end
  # get '/spaceflights/:id', to: 'spaceflights#show', as: :spaceflight
  # get '/spaceflights/list', to: 'spaceflight#list'
  # post '/spaceflight/create', to: 'spaceflight#create'
end
