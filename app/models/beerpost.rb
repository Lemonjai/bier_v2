class Beerpost < ApplicationRecord
  # Relationship for the beer colour
  belongs_to :beercolour
  belongs_to :brewery
  # Validates the name of the post
  validates :name, presence: true
end
