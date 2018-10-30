class Api::V1::BooksController < ApplicationController

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
    @book.user_id = book_params[:user_id]
    @book.title = book_params[:title]
    @book.author = book_params[:author]
    @book.description = book_params[:descriptions]
    @book.imgURL = book_params[:imgURL]
    @book.read = book_params[:read]
    @book.want_to_read = book_params[:want_to_read]
    if @book.save
      render json: @book
    else
      render json: { errors: @book.errors.full_messages }, status: :unprocessible_entity
    end
  end

  #in the case user updates book from want_to_read to read -- handle later
  def update
    @book.update(book_params)
    if @book.save
      render json: @book, status: :accepted
    else
      render json: { errors: @book.errors.full_messages }, status: :unprocessible_entity
    end
  end



  private

  def book_params
    params.require(:book).permit(:user_id, :title, :author, :description, :imgURL, :want_to_read, :read)
  end

end
