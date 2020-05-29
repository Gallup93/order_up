class CreateIngrediants < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :calories
    end
  end
end
