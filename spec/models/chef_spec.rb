require 'rails_helper'

RSpec.describe Chef, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
  end
  describe "relationships" do
    it {should have_many :dishes}
  end

  it "returns array of all ingredients" do
    chef1 = Chef.create(name: "Ronald McDonald")
    dish1 = chef1.dishes.create(name: "Nuggies", description: "100% real chicken (30% of the time)")
    ingred1 = dish1.ingredients.create(name: "salt", calories: "5")
    ingred2 = dish1.ingredients.create(name: "goop", calories: "650")

    expect(chef1.all_ingredients(chef1.id)).to eq(["salt","goop"])
  end
end
