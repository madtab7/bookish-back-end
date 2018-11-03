class Api::V1::BooksController < ApplicationController
  skip_before_action :authorized

  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book = Book.find(params[:id])
    render json: @book, status: 200
  end

  def create
    @book = Book.new(book_params)
    @book.title = book_params[:title]
    @book.author = book_params[:author]
    @book.description = book_params[:description]
    @book.imgURL = book_params[:imgURL]
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


end
