class Restaurant < ApplicationRecord
	has_many :reviews, dependent: :destroy # cancella tutte le reviews associate al ristorante se il ristorante viene cancellato
     # validates :reviews, exclusion: { in: [nil] }
    validates :name, :address, :category, presence: true # in automatico mostrerà un messaggio
    validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
    message: "%{value} is not a valid category" }
end
# A restaurant must have at least a name, an address and a category.
# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].


