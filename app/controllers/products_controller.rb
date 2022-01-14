class ProductsController < ApplicationController
  def create
    product = Product.new(

    name: params[:name],
    price: params[:price],
    image_url: params[:image_url],
    description: params[:description]

    )
    product.save
    render json: product.as_json
  end 


  def show
    id = params[:id].to_i
    product = Product.find_by(id: id)
  render json: product.as_json 
  end 
     
  def index
    product = Product.all
    render json: product.as_json 
  end 

  def update 
     product = Product.find(params[:id])
     product.name = params[:name] || product.name
     product.price = params[:price] || product.price
     product.image_url = params[:image_url] || product.image_url
     product.save
   #product.update(symbol: params[symbol:])(for use in console)
     render json: product.as_json 
   end 

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product has been deleted"}
  end 


end
