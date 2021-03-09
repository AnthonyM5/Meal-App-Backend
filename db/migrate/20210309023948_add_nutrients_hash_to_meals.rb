class AddNutrientsHashToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :nutrient_hash, :string
  end
end
