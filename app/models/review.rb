class Review < ApplicationRecord
  belongs_to :restaurant
    # validates :restaurant_id, presence: true la validatio nserve per gli input dell'user non per le operazioni del DATABASE 
    # che sono già specificate 
    validates :content, :rating, presence: true
    validates :rating, presence: true, inclusion: { in: (0..5),
  message: "%{value} is not a valid rating" }, numericality: { only_integer: true }
end


# A review must have a parent restaurant.
# A review must have content and a rating. The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all of its reviews should be destroyed as well.