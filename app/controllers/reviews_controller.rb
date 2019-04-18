class ReviewsController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book = @book
    if @review.save
      flash[:notice] = "YOU DUN CREATED A BOOK REVIEW!"
      redirect_to @book
    else
      flash.now[:error] = @review.errors.full_messages.join(", ")
      render :new
    end

  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
