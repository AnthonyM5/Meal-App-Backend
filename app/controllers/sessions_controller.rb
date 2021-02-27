class SessionsController < ApplicationController

    def login
      user = User.find_by_username(params[:username])
      if user && user.authenticate(params[:password])
        token = encode_token(user.id)
        render json: {user: {id: user.id, username: user.username}, token: token}

      else
        render json: {error: "EITHER THE USERNAME OR PASSWORD WAS INCORRECT!!!!!!!!!!!"}
      end
    end

    def autologin
        render json: {user: {id: logged_in_user.id, username:logged_in_user.username}}
    end



  
  end