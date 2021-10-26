class UsersController < ApplicationController
  
  def show 
    user_id = params[:id]
    current_user = User.find_by(id: user_id)
    render json: current_user
  end 
  
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

end
