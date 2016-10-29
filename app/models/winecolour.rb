class Winecolour < ApplicationRecord
  # Relation with the colour on the wine post
  has_many :wineposts
  # Validates the name of the colour and hexcode
  validates :name, :hexcode, presence: true
end
