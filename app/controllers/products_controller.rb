class ProductsController < ApplicationController


def display_product
  product = Product.all
  render json: Product.as_json 
end 


end
