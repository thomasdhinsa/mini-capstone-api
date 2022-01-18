class ProductsController < ApplicationController
  def create
    product = Product.new(

    name: params[:name],
    price: params[:price],
    image_url: params[:image_url],
    ingredients: params[:ingredients],
    inventory: params[:inventory]

    )
    product.save
    render json: product
  end 


  def show
    id = params[:id].to_i
    product = Product.find_by(id: id)
  render json: product
  end 
     
  def index
    product = Product.all
    render json: product 
  end 

  def update 
     product = Product.find(params[:id])
     product.name = params[:name] || product.name
     product.price = params[:price] || product.price
     product.image_url = params[:image_url] || product.image_url
     product.inventory = params[:inventory] || product.inventory
     product.save
  #  #product.update(symbol: params[symbol:])(for use in console)
     render json: product 
   end 

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product has been deleted"}
  end 
end 



