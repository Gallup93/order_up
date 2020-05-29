class Dish <ApplicationRecord
  validates_presence_of :name, :description
  belongs_to :chef
  belongs_to :dish_ingredients
  has_many :ingredients, through: :dish_ingredients
end
