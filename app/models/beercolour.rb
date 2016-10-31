class Beercolour < ApplicationRecord
  mount_uploader :colour_image, ImageUploader
  # Relation with the beer on the wine post
  has_many :beerposts
  # Image uploading model
  
  # Validates the name of the colour and hexcode
  validates :name, :hexcode, presence: true
end
