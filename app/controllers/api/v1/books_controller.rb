class Api::V1::BooksController < ApplicationController
  skip_before_action :authorized

  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book = Book.find(params[:id])
    render json: @book
  end

  def create
    @book = Book.new(book_params)
    @book.title = book_params[:title]
    @book.author = book_params[:author]
    @book.description = book_params[:descriptions]
    @book.imgURL = book_params[:imgURL]
    # @shelved_book = ShelvedBook.new(shelved_book_params)
    # @shelved_book.book_id = @book.id
    # @shelved_book.user_id = shelved_book_params[:user_id]
    # @shelved_book.read = shelved_book_params[:read]
    # @shelved_book.book_id = shelved_book_params[:want_to_read]
    if @book.save
      render json: @book
    else
      render json: { errors: @book.errors.full_messages }, status: :unprocessible_entity
    end
  end



  private

  def book_params
    params.require(:book).permit(:user_id, :title, :author, :description, :imgURL)
  end

  def shelved_book_params
    params.require(:shelved_book).permit(:book_id, :user_id, :read, :want_to_read)
  end

end
