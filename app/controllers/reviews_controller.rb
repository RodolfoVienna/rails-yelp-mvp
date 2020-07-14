class ReviewsController < ApplicationController
  before_action :find_restaurant

  # def index
  #   @review = Review.all
  # end

  # def show; end

  def new
    @review = Review.new
  end

  def create
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

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_param
    params.require(:review).permit(:rating, :content)
  end

end
