class Winepost < ApplicationRecord
  # Relationship for the wine colour
  belongs_to :winecolour
  belongs_to :winery
  # Validates the name of the post
  validates :name, presence: true
end
