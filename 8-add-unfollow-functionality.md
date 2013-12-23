
# Add Unfollow functionality

## add destroy method to follows controller
	limingth@gmail ~/Github/myTwetter/Twetter$ vi app/controllers/follows_controller.rb 
	 50   def destroy
	 51     if resource and resource.destroy
	 52       flash[:success] = "You are no longer following @#{resource.following.username}"
	 53     else
	 54       flash[:error] = "Your attempt to unfollow was not successful"
	 55     end
	 56     redirect_to :action => :index
	 57   end
	 58 
	 59   def resource
	 60     @resource ||= current_user.follows.where(:id => params[:id]).first
	 61   end

* refresh and before click unfollow button
![unfollow-before](unfollow-before.png)

* refresh and after click unfollow button
![unfollow-after](unfollow-after.png)

## modify the notice

### add @who variable to _user_list.html.erb
	limingth@gmail ~/Github/myTwetter/Twetter$ vi app/views/shared/_user_list.html.erb 
	  1 <h1>All <%= @who %> informations list</h1>
	  2 Total <%= @users.count %> users
	  3 

### add @who to follows controller
	limingth@gmail ~/Github/myTwetter/Twetter$ vi app/controllers/follows_controller.rb 
	  1 class FollowsController < ApplicationController
	  2   layout 'authed'
	  3 
	  4   @@click = "Users"
	  5 
	  6   def followers
	  7     @users.clear
	  8     redirect_to :action => :index
	  9   end
	 10 
	 11   def show
	 12     @@click = params[:id]
	 13     redirect_to :action => :index
	 14   end
	 15   
	 16   def index
	 17     @users = User.all
	 18     print @@click
	 19     @who = @@click.capitalize
	 20     
	 21     if @@click == "following"
	 22       @users.clear
	 23       current_user.follows.each do |u|
	 24         @users += User.where(:id => u.following_id)
	 25       end
	 26     end
	 27     
	 28     if @@click == "followers"
	 29       @users.clear
	 30       Follow.where(:following_id => current_user.id).each do |u|
	 31         @users += User.where(:id => u.user_id) 
	 32       end
	 33     end
	 34   end

### add @who to users controller
	limingth@gmail ~/Github/myTwetter/Twetter$ vi app/controllers/users_controller.rb 
	  4   def index
	  5     @users = User.all
	  6     @user = User.new
	  7     @who = "Users"
	  8   end

* refresh and click different buttons to see if user list title changes

### git commit


