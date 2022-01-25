Rails.application.routes.draw do
  post "/products/" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/" => "products#index"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  ###
  post "/suppliers/" => "suppliers#create"
  get "/suppliers/:id" => "suppliers#show"
  get "suppliers/" => "suppliers#index"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  ###
  post "/users/" => "users#create"
  get "/users/" => "users#index"

  ###
  post "/sessions" => "sessions#create"

end






