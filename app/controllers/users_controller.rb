class UsersController < ApplicationController
  before_action :authenticate_admin, except: [:create]


  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def index 
    users = User.all
    render json: users
  end 

end


# Write out all the steps necessary for your mini-capstone backend to allow users to purchase products. (aim for roughly 5 to 10 steps)
# 1  Make an orders create route
# 2  Make an orders controller
# 3  Build a create action in the orders controller
     # Sanity check and TEST
       # Start rails server
       # Make an orders create request in the REST Client
         # Tack on some headers/body params
     # Make a new order (Order.new) take in params of prduct_id, user_id, quantity, subtotal, tax, total 
     # Happy/Sad Path (save the order. If it doesn't save render error json)
     # Test it
# 4  Make an orders show
# 5  Make an orders index
# 6  Change the orders create action to get user_id from a JWT (user current_user.id), send Authorization header with request 
# 7  Change the orders create action to calculate subtotal tax and total from the product
# 8 
# 9 
# 10
