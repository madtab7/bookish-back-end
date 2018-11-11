class Api::V1::ReviewsController < ApplicationController
  skip_before_action :authorized

  def index
    if params[:user_id] != nil
      @reviews = Review.where( {"user_id": params[:user_id]} )
    else
      @reviews = Review.all
    end
    render json: @reviews
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @review = Review.find(params[:id])
    render json: @review
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    if @review.save
      render json: @review
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
    end    
  end


private

  def review_params
    params.require(:review).permit(:user_id, :book_id, :title, :content, :rating)
  end


end
