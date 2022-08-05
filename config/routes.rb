Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get "users/world_leaders" => "users#world_leaders"
  get "users/country_leaders/:country" => "users#country_leaders"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
