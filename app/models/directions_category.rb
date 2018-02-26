class DirectionsCategory < ApplicationRecord
  belongs_to :recipe
  has_many :directions
end
