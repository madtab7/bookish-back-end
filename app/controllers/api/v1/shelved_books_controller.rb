class Api::V1::ShelvedBooksController < ApplicationController
  skip_before_action :authorized

  def index
    # @shelved_books = ShelvedBook.all
    if params[:user_id] != nil
      @shelved_books = ShelvedBook.where( {"user_id": params[:user_id]} )
    else
      @shelved_books = ShelvedBook.all
    end
    render json: @shelved_books
  end

  def create
    @shelved_book = ShelvedBook.new(shelved_book_params)
    if @shelved_book.save
      render json: @shelved_book
    else
      render json: { errors: @shelved_book.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @shelved_book = ShelvedBook.find(params[:id])
    render json: @shelved_book
  end

  def edit
  end

  def destroy
    @shelved_book = ShelvedBook.find(params[:id])
    @shelved_book.destroy
  end

  def update
    @shelved_book = ShelvedBook.find(params[:id])
    @shelved_book.update(shelved_book_params)
    if @shelved_book.save
      render json: @shelved_book
    else
      render json: { errors: @shelved_book.errors.full_messages }, status: :unprocessible_entity
    end
  end


  private

  def shelved_book_params
    params.require(:shelved_book).permit(:book_id, :user_id, :read, :want_to_read, :recommended, :friend_id)
  end

end
