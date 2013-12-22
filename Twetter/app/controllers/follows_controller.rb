class FollowsController < ApplicationController
  layout 'authed'
 
  @click_following = 0
 
  def show
    @click_following = 1
    redirect_to :action => :index
  end

  def index
    @users = User.all
    if @click_following == 0
      @users = User.all
    else
      @users.clear
      current_user.follows.each do |u|
	      @users += User.where(:id => u.following_id) 
      end
    end
  end

  def create
    following = current_user.follows.where(:following_id => follow_params[:following_id]).first ||
      current_user.follows.create(follow_params)
    if following.present? and following.persisted?
      flash[:success] = "You are following @#{following.following.username}"
    else
      flash[:error] = "Your attempt to follow was unsuccessful"
    end
    redirect_to :action => :index
  end

  def follow_params
    params.require(:follow).permit(:following_id)
  end


end
