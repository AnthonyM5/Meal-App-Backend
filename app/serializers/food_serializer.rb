class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :kj, :calories, :total_lipid, :protein, :water, :carbs, :fiber, :poly_unsat_fats, 
  :sat_fats, :cholesterol, :vitamin_b12, :folate_dfe, :food_folate, :folic_acid, :total_folate, :vitamin_b6, 
  :pantothenic, :niacin, :riboflavin, :thiamin, :vitamin_c, :vitamin_e, :vitamin_d, :vitamin_a_r, :vitamin_a,
  :selenium, :copper, :zinc, :sodium, :magnesium, :iron, :calcium, :ash, :galactose, :lactose, :fructose, :glucose,
  :sucrose, :total_sugar, :starch
end
