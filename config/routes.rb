Rails.application.routes.draw do
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  ### USERS CREATE
  get "/users/:id" => "users#show"
  post "/users" => "users#create"

  ### SESSIONS CREATE
  post "/sessions" => "sessions#create"

end
