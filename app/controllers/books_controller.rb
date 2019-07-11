class BooksController < ApplicationController

  def index
    @books = Book.all
    # render :index
  end

  def show
    @book = Book.find(params[:id])
    @reviews = @book.reviews
    @review = Review.new
    # @reviews = Review.where(book_id: @book.id)
  end

  def new
    @book = Book.new
    # render :books/new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path
    else
      render :new
    end

  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :isbn)
  end
end
