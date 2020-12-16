class FoodsController < ApplicationController

    def index
        foods = Food.all
        render json: foods
    end

    def show 
        food = Food.find_by(id: params[:id])
        render json: food, serializer: FoodShowSerializer 
    end


end
