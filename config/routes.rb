Rails.application.routes.draw do
  post "/products/" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/" => "products#index"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"



end
