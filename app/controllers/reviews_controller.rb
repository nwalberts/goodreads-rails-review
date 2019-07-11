class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @book = Book.find(params[:book_id])
  end

  def create
    # binding.pry
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book = @book

    if @review.save
      flash[:success] = "Book saved!"
      redirect_to @book
      
      # redirect_to book_path(@book)
      # redirect_to "/books/#{@book.id}"
    else
      # less preferred
      # @errors = @review.errors.full_messages.join(", ")

      # more preferred
      flash.now[:error] = @review.errors.full_messages.join(", ")
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end

end
