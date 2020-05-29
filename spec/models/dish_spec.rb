require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :description}
  end
  describe "relationships" do
    it {should belong_to :chef}
  end

  it "returns total_calories of a dish" do
    chef1 = Chef.create(name: "Ronald McDonald")
    dish1 = chef1.dishes.create(name: "Nuggies", description: "100% real chicken (30% of the time)")
    ingred1 = dish1.ingredients.create(name: "salt", calories: "5")
    ingred2 = dish1.ingredients.create(name: "goop", calories: "650")

    expect(dish1.total_calories(dish1.id)).to eq(655)
  end
end
