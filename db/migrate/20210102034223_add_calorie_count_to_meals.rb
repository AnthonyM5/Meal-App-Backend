class AddCalorieCountToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :calorie_count, :integer
  end
end
