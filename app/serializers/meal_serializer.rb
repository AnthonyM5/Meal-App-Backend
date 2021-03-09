class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :img_url, :calorie_count, :nutrient_hash

  has_many :ingredients
end
