class Dish <ApplicationRecord
  validates_presence_of :name
  validates_presence_of :description
  belongs_to :chef
  has_many :dish_ingredients
  has_many :ingredients, through: :dish_ingredients

  def total_calories(id)
    calories = 0
    dish = Dish.find(id)
    dish.ingredients.each {|ingred| calories += ingred.calories.to_i}
    calories
  end
end
