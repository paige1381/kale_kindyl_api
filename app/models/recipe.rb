class Recipe < ApplicationRecord
  has_many :tags
  validates :title, presence: true
  validates :image1, presence: true
  validates :desc1, presence: true
  validates :recipeType, presence: true
end
