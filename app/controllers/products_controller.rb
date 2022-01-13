class ProductsController < ApplicationController


#def display_product
  #product = Product.all
  #render json: Product.as_json 
#end 
   

def display_query
  render json: {message: "Am I insane?"}
  end

end
