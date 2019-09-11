class ReviewsController < ApplicationController
  def index
    @flat = Flat.find(params[:flat_id])
    @reviews = Review.all
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @review = Review.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    @review.flat = @flat
    @review.save
    redirect_to flat_path(@flat)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
