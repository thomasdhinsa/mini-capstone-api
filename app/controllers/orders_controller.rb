class OrdersController < ApplicationController
  before_action :authenticate_user


  def create
    product = Product.find(params[:product_id])
    subtotal = product.price * params[:quantity]
    tax = subtotal * 0.09
    total = subtotal + tax
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal, 
      tax: tax,
      total: total
     )
    if order.save
      render json: order
    else 
      render json: {errors: order.error.full_messages}, status: :unprocussable_entity
    end
  end  

  
  
   def show
    render json: Order.find(params[:id])
  end 

  def index 
    if current_user
      orders = current_user.orders
      render json: orders
    else 
      render json: [], status: :unauthorized
    end
  end 

end


