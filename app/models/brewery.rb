class Brewery < ApplicationRecord
  has_many :beerposts

  validates :name, :addr, presence: true
end
