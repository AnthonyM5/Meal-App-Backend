class IngredientsController < ApplicationController
    before_action :get_meal

    def create
        # byebug
        @meal.ingredients.create({food_id: params[:id]})
    end

    def index
        ingredients = @meal.ingredients
        render json: ingredients
    end

    def get_meal 
        @meal = Meal.find_by_id(params[:meal_id])
    end
    
end
