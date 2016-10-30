class Beerpost < ApplicationRecord
  # Relationship for the beer colour
  belongs_to :beercolour
  belongs_to :brewery
  # Image uploading model
  mount_uploader :image, ImageUploader
  # Validates the name of the post
  validates :name, presence: true
end
