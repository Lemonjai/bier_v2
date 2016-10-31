class Beerpost < ApplicationRecord
  mount_uploader :image, ImageUploader
  # Relationship for the beer colour
  belongs_to :beercolour
  belongs_to :brewery
  # Image uploading model
  
  # Validates the name of the post
  validates :name, presence: true
end
