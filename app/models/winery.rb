class Winery < ApplicationRecord
  has_many :wineposts

  validates :name, :addr, presence: true
end
