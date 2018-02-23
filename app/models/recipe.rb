class Recipe < ApplicationRecord
  has_many :tags
  has_many :ingredient_categories
  validates :title, presence: true
  validates :image1, presence: true
  validates :desc1, presence: true
  validates :recipeType, presence: true
end
