Rails.application.routes.draw do
  devise_for :users
  root to: "spaceflights#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/spaceflights/:id', to: 'spaceflights#show', as: :spaceflight
end
