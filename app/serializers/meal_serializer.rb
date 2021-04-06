class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :img_url, :calorie_count, :ingredients

  has_many :ingredients
end
