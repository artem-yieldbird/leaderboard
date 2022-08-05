require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq' if ENV["RAILS_ENV"] == 'development'

  ActiveAdmin.routes(self)

  root to: "admin/users#index"

  get "leaders" => "users#show"
end
