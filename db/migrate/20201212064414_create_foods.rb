class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :nutrient_hash
      t.float :total_lipid
      t.float :protein
      t.float :water
      t.float :carbs
      t.float :fiber
      t.float :starch
      t.float :total_sugar
      t.float :sucrose
      t.float :glucose
      t.float :fructose
      t.float :lactose
      t.float :galactose
      t.float :ash
      t.float :calcium
      t.float :iron
      t.float :magnesium
      t.float :sodium
      t.float :zinc
      t.float :copper
      t.float :selenium
      t.float :vitamin_a
      t.float :vitamin_a_r
      t.float :vitamin_d
      t.float :vitamin_e
      t.float :vitamin_c
      t.float :thiamin
      t.float :riboflavin
      t.float :niacin
      t.float :pantothenic
      t.float :vitamin_b6
      t.float :total_folate
      t.float :folic_acid
      t.float :food_folate
      t.float :folate_dfe
      t.float :vitamin_b12
      t.float :cholesterol
      t.float :sat_fats
      t.float :poly_unsat_fats
      t.float :calories
      t.integer :kj

      t.timestamps
    end
  end
end
