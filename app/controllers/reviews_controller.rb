class ReviewsController < ApplicationController
  

  # def index
  #   @review = Review.all
  # end

  # def show; end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_param)
    @review.restaurant = @restaurant
      if @review.save
        redirect_to restaurant_path(@restaurant) # @review = @review.id
      else
        render "new"
      end
  end

  # def edit; end

  # def update
  #   review.update(review_param)
  #   redirect_to review_path(@review) # @review = @review.id
  # end

  #  def destroy
  #   @review.delete
  #   redirect_to @review_path
  # end

private

  def review_param
    params.require(:review).permit(:rating, :content)
  end

end
