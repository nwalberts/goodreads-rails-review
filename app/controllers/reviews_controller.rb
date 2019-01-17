class ReviewsController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @book = Book.find(params[:book_id])
    # @review.book_id = @book.id
    @review.book = @book

    if @review.save
      flash[:notice] = "Review added successfully!"
      redirect_to book_path(@book)
    else
      flash[:error] = @review.errors.full_messages.join(", ")
      render :new
    end

  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end


end
