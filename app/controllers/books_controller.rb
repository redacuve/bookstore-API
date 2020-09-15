class BooksController < ApplicationController
  before_action :set_book, only: %i[show update destroy]

  def index
    @books = Book.all
    json_response(@books)
  end

  def create
    @book = Book.create!(books_params)
    json_response(@book, :created)
  end

  def show
    json_response(@book)
  end

  def update
    @book.update(books_params)
    head :no_content
  end

  def destroy
    @book.destroy
    head :no_content
  end

  private

  def books_params
    params.permit(:title, :category, :percentage, :author)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
