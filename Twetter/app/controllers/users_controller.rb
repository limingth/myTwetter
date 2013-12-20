class UsersController < ApplicationController
  layout 'authed'

  def index
    @users = User.all
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @users = User.all
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render 'new', notice: "thank youfor signing up"
    else
      redirect_to root_url, notice: "Sorry, Signing up failed"
    end
  end

  private 
    def user_params
      params.require(:user).permit(:name, :username, :password, :password_confirmation)
    end

end
