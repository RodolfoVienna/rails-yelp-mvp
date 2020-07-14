class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # cancella tutte le reviews associate al ristorante se il ristorante viene cancellato
  # validates :reviews, exclusion: { in: [nil] }
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
  message: "%{value} is not a valid category" }
end
# A restaurant must have at least a name, an address and a category.
# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].


