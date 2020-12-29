class MealsController < ApplicationController

    def create
        user = User.find_by_id(params['user'])
        meal = user.meals.create(meal_params)
        render json: meal
    end

    def index 
        user = logged_in_user
        meals = user.meals
        render json: meals, include: [:ingredients]
    end

     def show
        meal = Meal.find_by(id: params[:id])
        @included = []
        # @calculations = 0
        meal.ingredients.each do |food| 
            included = Food.where(id: food.food_id)
            included.each do |f|
                @included << f
                # @calculations += f.calories
            end
        end  
        render json: meal, include: [@included]
    end

    def meal_params
        params.permit(:name)
    end


end
