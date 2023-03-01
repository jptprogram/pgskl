Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :equipos, only: [:new, :create, :index, :show, :delete]
  resources :gruas, only: [:new, :create, :index,:show, :delete, :electrica,:combustion,:transpaleta,:apilador]
  resources :tractors, only: [:new, :create, :index, :show, :delete]
  resources :maquinariapesadas, only: [:new, :create, :index, :show, :delete]
  resources :ventos, only: [:new, :create, :index, :show, :delete]
  resources :repuestos, only: [:new, :create, :index, :show, :delete]
end
