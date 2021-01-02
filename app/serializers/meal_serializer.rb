class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :ingredients, :img_url, :calorie_count
end
