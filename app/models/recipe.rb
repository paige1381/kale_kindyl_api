class Recipe < ApplicationRecord
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags
  has_many :ingredient_categories
  has_many :directions_categories
  validates :title, presence: true
  validates :image1, presence: true
  validates :desc1, presence: true
  validates :recipeType, presence: true
end
