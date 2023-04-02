class SessionsController < ApplicationController
    def create 
        username = User.find_by(username: params[:username])
        session[:user_id]=username.id
        render json: username, status: :created
    end

    def destroy
        session.delete :user_id
        head :no_content 
      end 
end
