class SessionsController < ApplicationController


    #find user in db using the username from params
    #save user's id to session hash
    #return user as json obj
    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end

    #remove user id from session hash 
    #return empty resp. w/ 204 no content status code
    def destroy
        session.delete :user_id
        head :no_content
    end


end
