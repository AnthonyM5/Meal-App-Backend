class UsersController < ApplicationController


    def create
        user = User.create(user_params) 
        render json: user
    end

    def index
        users = User.all
        render json: users
    end

    # def show 
    #     user = User.find_by(id: params[:id])
    #     render json: user
    # end

    def user_params
        params.permit(:username, :password)
    end


end
