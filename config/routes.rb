Rails.application.routes.draw do
 
  #get "/display_product",controller:"products",action:"display_product"
  #get "/display_product" => "products#display_product"

  get "/display_query/:food_stuff" => "products#display_query" #works
end
