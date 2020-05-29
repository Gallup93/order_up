require 'rails_helper'

RSpec.describe "dish show page" do
  context "as a visitor" do
    it "list all ingredients and chef name for dish" do

      chef1 = Chef.create(name: "Ronald McDonald")
      dish1 = chef1.dishes.create(name: "Nuggies", description: "100% real chicken (30% of the time)")
      ingred1 = dish1.ingredients.create(name: "salt", calories: "5")
      ingred2 = dish1.ingredients.create(name: "goop", calories: "650")

        visit "/dish/#{dish1.id}"

        whithin ".dish-#{dish1.id}" do
          expect(page).to have_content(chef1.name)
          expect(page).to have_content(ingred1.name)
          expect(page).to have_content(ingred2.name)
        end

    end
  end
end
