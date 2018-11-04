class Api::V1::ShelvedBooksController < ApplicationController
  skip_before_action :authorized

  def index
    # @shelved_books = ShelvedBook.all
    if params[:user_id] != nil
      @shelved_books = ShelvedBook.where( {"user_id": params[:user_id]} )
      # puts params[:user_id].to_i
    else
      @shelved_books = ShelvedBook.all
    end
    render json: @shelved_books
  end

  def create
    @shelved_book = ShelvedBook.new(shelved_book_params)
    @shelved_book.book_id = shelved_book_params[:book_id]
    @shelved_book.user_id = shelved_book_params[:user_id]
    @shelved_book.read = shelved_book_params[:read]
    @shelved_book.want_to_read = shelved_book_params[:want_to_read]
    if @shelved_book.save
      render json: @shelved_book
    else
      render json: { errors: @shelved_book.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # def show
  #   @shelved_book = ShelvedBook.where("user_id = ?", user_id)
  #   render json: @shelved_book, status: 200
  # end

  def users
    @shelved_book = ShelvedBook.find_by(params[:user_id])
    render json: @shelved_book, status: 200
  end

  private

  def shelved_book_params
    params.require(:shelved_book).permit(:book_id, :user_id, :read, :want_to_read)
  end

end
