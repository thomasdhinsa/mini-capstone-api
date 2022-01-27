class ProductsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]
  

  def create
    product = Product.new(

    name: params[:name],
    price: params[:price],
    ingredients: params[:ingredients],
    inventory: params[:inventory],
    supplier_id: params[:supplier_id]

    )
    if product.save
      render json: product
    else 
      render json: { errors: product.errors.full_messages }, status: 406
    end
  end 


  def show
    id = params[:id].to_i
    product = Product.find_by(id: id)
  render json: product
  end 
     
  def index
    products = Product.all
    render json: products 
    # if params[:search]
    #   products = products.where("name iLike ?", "#{params[:search]}%")
    # end 
    # if params[:discount]
    #   products = products.where("price < ?", 10)
    # end 
    # if params[:sort] == "price"
    #   if params[:sort_order] == "desc"
    #     products = products.order(price: :desc)
    #   else 
    #   products = products.order[:price]
    #   end 
    # else products = products.order(:id)
    # end 
    # render json: products 
  end 

  def update 
     product = Product.find(params[:id])
     product.name = params[:name] || product.name
     product.price = params[:price] || product.price
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



