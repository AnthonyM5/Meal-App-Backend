class Meal < ApplicationRecord
    belongs_to :user
    has_many :ingredients, dependent: :destroy
    has_many :foods, through: :ingredients
    validates :name, presence: true 



end
