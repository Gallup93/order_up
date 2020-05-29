class Ingredient < ApplicationRecord
  validates_presence_of :name, :calories
  belongs_to :dish_ingredients
  has_many :dishes, through: :dish_ingredients
end
