class Beercolour < ApplicationRecord
  # Relation with the beer on the wine post
  has_many :beerposts
  # Validates the name of the colour and hexcode
  validates :name, :hexcode, presence: true
end
