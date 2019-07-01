class UsersController < ApplicationController

  def index
    # @users = User.all 
    render json: User.all
    
  end 

  def show
    render json: User.find(params[:id])
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email))
    # replace the `user_attributes_here` with the actual attribute keys
    if @user.save
      render json: @user
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:name, :email))
      redirect_to user_url
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to allusers_url
  end
  
end