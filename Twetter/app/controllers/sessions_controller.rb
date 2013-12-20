class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])  
      session[:user_id] = user.id
      redirect_to root_url, notice: "Thank you for signing in"
    else
      if not user
        redirect_to root_url, notice: "Sorry, Signing in failed, user not exists"
      else
        redirect_to root_url, notice: "Sorry, Signing in failed, password not correct"
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end

end
