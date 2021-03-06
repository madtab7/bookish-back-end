class Api::V1::FriendshipsController < ApplicationController
  # skip_before_action :authorized, only: [:create]
  skip_before_action :authorized

  def index
    if params[:user_id] != nil
      @friendships = Friendship.where( {"user_id": params[:user_id]} )
    else
      @friendships = Friendship.all
    end
    render json: @friendships
  end

  def create
    @friendship = Friendship.new(friendship_params)
    if @friendship.save
      render json: @friendship
    end
  end

  private

  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end

end
