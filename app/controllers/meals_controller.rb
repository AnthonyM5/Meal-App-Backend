class MealsController < ApplicationController

    def create
        user = User.find_by_id(params['user'])
        byebug
        meal = user.meals.create(name: params[:name], img_url: params[:imgUrl])
        render json: meal
    end

    def index 
        user = logged_in_user
        meals = user.meals
        render json: meals, include: [:ingredients]
    end

     def show
        meal = Meal.find_by(id: params[:id])


        render json:  meal
    end

    def meal_params
        params.permit(:name, :img_url)
    end


end
