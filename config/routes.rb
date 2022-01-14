Rails.application.routes.draw do
 
  get "/specific_query/:id" => "products#specific_query"
  post "/create/" => "products#create"
  get "/show/:id" => "products#show"
  get "/index" => "products#index"
  patch "/update/:id" => "products#update"
  delete "destroy/:id" => "products#destroy"






end
