class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
  has_many :reviews
end


# When a restaurant is destroyed, all of its reviews must be destroyed as well.
# A review must belong to a restaurant.
# A review must have content and a rating.
# A review’s rating must be a number between 0 and 5.
