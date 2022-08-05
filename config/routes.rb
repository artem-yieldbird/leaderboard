Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  root to: "admin/users#index"

  get "leaders" => "users#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
