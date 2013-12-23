class FollowsController < ApplicationController
  layout 'authed'
 
  @@click = "users"

  def followers
    @users.clear
    redirect_to :action => :index
  end

  def show
    @@click = params[:id]
    redirect_to :action => :index
  end

  def index
    @users = User.all
    print @@click
    @who = @@click.capitalize

    if @@click == "following"
      @users.clear
      current_user.follows.each do |u|
        @users += User.where(:id => u.following_id) 
      end
    end

    if @@click == "followers"
      @users.clear
      Follow.where(:following_id => current_user.id).each do |u|
        @users += User.where(:id => u.user_id) 
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

  def destroy
    if resource and resource.destroy
      flash[:success] = "You are no longer following @#{resource.following.username}"
    else
      flash[:error] = "Your attempt to unfollow was not successful"
    end
    redirect_to :action => :index
  end

  def resource
    @resource ||= current_user.follows.where(:id => params[:id]).first
  end

  def follow_params
    params.require(:follow).permit(:following_id)
  end


end
