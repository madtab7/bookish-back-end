class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  #only render necessary user details
  def create
    @user = User.new(user_params)
    if @user.save
      render json: { id: @user.id, username: @user.username, full_name: @user.full_name, books: @user.books }
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end



  private

  def user_params
    params.require(:user).permit(:username, :full_name, :password)
  end

end
