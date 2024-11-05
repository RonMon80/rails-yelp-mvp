Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "restaurants#index"

  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/:id', to: 'restaurants#show'
  post 'restaurants', to: 'restaurants#create'
  # ou resources :restaurants, only: [:index, :new, :show, :create]

  # resources :restaurants, only: [:index, :new, :show, :create] do
  #   resources :reviews, only: [:new, :create]
  # end
  resources :restaurants do
    resources :reviews, only: %i[new create] # ou ==> [:new, :create]
  end
end
