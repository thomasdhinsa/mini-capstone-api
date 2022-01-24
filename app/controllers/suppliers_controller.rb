class SuppliersController < ApplicationController


  def create
    supplier = Supplier.new(

    name: params[:name], 
    email: params[:email],
    phone_number: params[:phone_number]

    )
    # if 
    supplier.save
      render json: supplier
    # else 
    #   render json: {errors: suppliers.error.full_messages}, status: 406
    # end 
  end

  def show
    id = params[:id].to_i
    supplier = Supplier.find_by(id: id)
    render json: supplier 
  end 

  def index 
    suppliers = Supplier.all
    if params[:search]
      suppliers = suppliers.where("name iLike ?", "#{params[:search]}%")
    else 
      suppliers = suppliers.order(:id)
    end 
    render json: suppliers 
  end 


  def update
    supplier = Supplier.find(params[:id])
    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number
    if supplier.save
      render json: supplier
    else 
      render json: {errors: supplier.error.full_messages}, status: 406
    end 
  end 

  def destroy
    supplier = Supplier.find(params[:id])
    supplier.delete
    render json: {message: "The chosen supplier is deleted"}
  end 















end 

