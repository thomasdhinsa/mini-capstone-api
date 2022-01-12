Rails.application.routes.draw do
 
  #get "/display_product",controller:"products",action:"display_product"
  get "/display_product" => "products#display_product"
end
