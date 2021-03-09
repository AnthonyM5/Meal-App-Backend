class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :food_id
  belongs_to :meal
  belongs_to :food




end
