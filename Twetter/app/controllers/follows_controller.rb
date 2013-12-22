class FollowsController < ApplicationController
  layout 'authed'

  def index
    @users = User.all_except(current_user)
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
