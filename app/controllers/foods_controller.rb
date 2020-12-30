class FoodsController < ApplicationController

    def index
        foods = Food.all
        # @foods.paginate(page: params[:page], per_page: 20)
        render json: foods
    end

    def show 
        food = Food.find_by(id: params[:id])
        render json: food, serializer: FoodShowSerializer 
    end

    def food_params
        params.permit(:page)
    end


end
