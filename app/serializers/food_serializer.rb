class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :nutrient_hash
end
