class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian].freeze

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY, message: '%<value> is not a valid category.' }
end

# Validation

#     A restaurant must have a name, an address and a category.
#     A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
#     When a restaurant is destroyed, all of its reviews must be destroyed as well.
#     A review must belong to a restaurant.
#     A review must have content and a rating.
#     A review’s rating must be a number between 0 and 5.
