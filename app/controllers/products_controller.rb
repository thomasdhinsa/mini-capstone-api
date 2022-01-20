class ProductsController < ApplicationController
  def create
    product = Product.new(

    name: params[:name],
    price: params[:price],
    image_url: params[:image_url],
    ingredients: params[:ingredients],
    inventory: params[:inventory]

    )
    if product.save
    render json: product
    else 
      render json: {errors: products.error.full_messages}, status: 406
    end
  end 


  def show
    id = params[:id].to_i
    product = Product.find_by(id: id)
  render json: product
  end 
     
  def index
    products = Product.all
    if params[:search]
      products = products.where("name iLike ?", "#{params[:search]}%")
    end 
    if params[:discount]
      products = products.where("price < ?", 10)
    end 
    if params[:sort] == "price"
      if params[:sort_order] == "desc"
        products = products.order(price: :desc)
      else 
      products = products.order[:price]
      end 
    else products = products.order(:id)
    end 
    # product = Product.all
    render json: product 
  end 

  def update 
     product = Product.find(params[:id])
     product.name = params[:name] || product.name
     product.price = params[:price] || product.price
     product.image_url = params[:image_url] || product.image_url
     product.inventory = params[:inventory] || product.inventory
     product.ingredients = params[:ingredients] || product.ingredients 
     if product.save
      render json: product
     else 
      render json: {errors: products.error.full_messages}, status: 406
     end 
   end 

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product has been deleted"}
  end 
end 



