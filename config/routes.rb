Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :equipos, only: [:new, :create, :index, :show, :delete]
  resources :gruas
  resources :tractors
  resources :maquinariapesadas
  resources :ventos
  resources :repuestos
  resources :novedads, path: "novedades"
  resources :transpaleta_apilador_electricos, path: "transpaletas"

  get "operadores", to: "pages#operadores", as: :operadores


  namespace :mailer do
    resources :contacts, only: [:create]
  end
end
