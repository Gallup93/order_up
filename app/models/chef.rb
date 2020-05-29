class Chef <ApplicationRecord
  validates_presence_of :name
  has_many :dishes

  def all_ingredients(id)
    names = []
    @chef = Chef.find(id)
    @chef.dishes.each{|dish| dish.ingredients.each{|ingred| names << ingred.name}}
    names
  end

end
