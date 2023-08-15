Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :transfers, only: [:index, :new, :create, :destroy]
  resources :groups, only: [:index, :new, :create, :destroy]
  root "users#index"
end
