class AddIDsToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :meal_id, :integer
    add_column :ingredients, :food_id, :integer
  end
end
