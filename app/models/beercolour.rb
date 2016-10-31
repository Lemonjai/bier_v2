class Beercolour < ApplicationRecord
  # Relation with the beer on the wine post
  has_many :beerposts
  # Image uploading model
  mount_uploader :colour_image, ImageUploader
  # Validates the name of the colour and hexcode
  validates :name, :hexcode, presence: true
end
