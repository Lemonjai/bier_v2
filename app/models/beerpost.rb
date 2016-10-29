class Beerpost < ApplicationRecord
  # Relationship for the beer colour
  belongs_to :beercolour
  # Validates the name of the post
  validates :name, presence: true
end
