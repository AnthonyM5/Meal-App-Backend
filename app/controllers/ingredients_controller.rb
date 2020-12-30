class IngredientsController < ApplicationController
    before_action :get_meal

    def create
        # byebug
        @meal.ingredients.create({food_id: params[:id]})
    end

    def index
        ingredients = @meal.ingredients
        @included = []
        @calculations = 0
        ingredients.each do |food| 
            included = Food.where(id: food.food_id)
            included.each do |f|
                @included << f
                @calculations += f.calories
            end
        end  

        render json: @included, include: ingredients
    end

    def get_meal 
        @meal = Meal.find_by_id(params[:meal_id])
    end
    
end
