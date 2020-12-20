class SessionsController < ApplicationController

    def login
      user = User.find_by_username(params[:username])
      if user && user.authenticate(params[:password])
        byebug
        render json: user
      else
        render json: {error: "EITHER THE USERNAME OR PASSWORD WAS INCORRECT!!!!!!!!!!!"}
      end
    end
  
  end