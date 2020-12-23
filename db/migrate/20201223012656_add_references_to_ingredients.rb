class AddReferencesToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredients, :food, null: false, foreign_key: true
    add_reference :ingredients, :meal, null: false, foreign_key: true

  end
end
