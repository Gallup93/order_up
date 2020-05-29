require 'rails_helper'

RSpec.describe "chef show page" do
  context "as a visitor" do
    it "shows a chef and a link to view all ingredients they use" do

      chef1 = Chef.create(name: "Ronald McDonald")
      dish1 = chef1.dishes.create(name: "Nuggies", description: "100% real chicken (30% of the time)")
      ingred1 = dish1.ingredients.create(name: "salt", calories: "5")
      ingred2 = dish1.ingredients.create(name: "goop", calories: "650")

      visit "/chef/#{chef1.id}"

      expect(page).to have_content(chef1.name)
      click_link "all of my ingredients"
      expect(current_path).to eq("/chef/ingredients")
      expect(page).to have_content(ingred1.name)
      expect(page).to have_content(ingred2.name)
    end
  end
end
