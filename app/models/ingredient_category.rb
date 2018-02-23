class IngredientCategory < ApplicationRecord
  belongs_to :recipe
  has_many :ingredients
end
