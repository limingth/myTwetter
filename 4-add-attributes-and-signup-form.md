
# Add attributes and Sign Up Form

## Add Sign Up Form

* refer to
<http://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html>

### add render partial sign up 
	limingth@gmail ~/Github/myTwetter/Twetter$ vi app/views/layouts/application.html.erb
	 28        <div class="my-wiki-site">
	 29           <h3>Join us today!</h3>
	 30           <div class="clearfix top-space"></div>
	 31             <%= render :partial => 'sign_up' %>
	 32        </div>

### add sign up form
	limingth@gmail ~/Github/myTwetter/Twetter$ vi app/views/welcome/_sign_up.html.erb 
	<div class="row">
	  <div class="col-md-4 col-md-offset-4 panel panel-default">
	    <div class="pull-left">
	      <h4>New to Twetter? <span>Sign up</span></h4>
	    </div>
	    <div class="clearfix"></div>
	    <hr />

	        <%= form_for @user do |f| %>
	          <%= f.label :name %>
	          <%= f.text_field :name %><br />

	          <%= f.label :username %>
	          <%= f.text_field :username %><br />

	          <%= f.submit %>
	        <% end %>

	  </div>
	</div>    

### add users as a resource
	limingth@gmail ~/Github/myTwetter/Twetter$ vi config/routes.rb 
	  1 Twetter::Application.routes.draw do
	  2   get "welcome/index"
	  3   # The priority is based upon order of creation: first created -> highest priority.
	  4   # See how all your routes lay out with "rake routes".
	  5 
	  6   # You can have the root of your site routed with "root"
	  7   root 'welcome#index'
	  8   resources :users

### refresh web browser localhost:3000
* now you can see sign up form with 2 text field

![view-add-sign-up-form](view-add-sign-up-form.png)

### git commit
	limingth@gmail ~/Github/myTwetter/Twetter$ git status
	# On branch master
	# Changes not staged for commit:
	#   (use "git add <file>..." to update what will be committed)
	#   (use "git checkout -- <file>..." to discard changes in working directory)
	#
	#	modified:   ../3-setup-database-and-user-model.md
	#	modified:   ../README.md
	#	modified:   app/controllers/welcome_controller.rb
	#	modified:   app/views/layouts/application.html.erb
	#	modified:   config/routes.rb
	#
	# Untracked files:
	#   (use "git add <file>..." to include in what will be committed)
	#
	#	../4-add-attributes-and-signup-form.md
	#	app/views/welcome/_sign_in.html.erb
	#	app/views/welcome/_sign_up.html.erb
	#	../view-add-sign-up-form.png
	no changes added to commit (use "git add" and/or "git commit -a")
	limingth@gmail ~/Github/myTwetter/Twetter$ git add ..
	limingth@gmail ~/Github/myTwetter/Twetter$ git add .
	limingth@gmail ~/Github/myTwetter/Twetter$ git commit -a -m "Add Sign Up Form"
	[master c747c18] Add Sign Up Form
	 9 files changed, 143 insertions(+), 9 deletions(-)
	 create mode 100644 4-add-attributes-and-signup-form.md
	 create mode 100644 Twetter/app/views/welcome/_sign_in.html.erb
	 create mode 100644 Twetter/app/views/welcome/_sign_up.html.erb
	 create mode 100644 view-add-sign-up-form.png
	limingth@gmail ~/Github/myTwetter/Twetter$ git push
	Counting objects: 31, done.
	Delta compression using up to 2 threads.
	Compressing objects: 100% (17/17), done.
	Writing objects: 100% (18/18), 793.16 KiB | 0 bytes/s, done.
	Total 18 (delta 10), reused 0 (delta 0)
	To git@github.com:limingth/myTwetter.git
	   3633646..c747c18  master -> master
	limingth@gmail ~/Github/myTwetter/Twetter$ 

## Add password attributes to User model

### rails generate migration AddPasswordToUsers password:string
	limingth@gmail ~/Github/myTwetter/Twetter$ rails generate migration AddPasswordToUsers password:string
	      invoke  active_record
	      create    db/migrate/20131219230746_add_password_to_users.rb
	limingth@gmail ~/Github/myTwetter/Twetter$ 

### rake db:migrate
	limingth@gmail ~/Github/myTwetter/Twetter$ rake db:migrate
	==  AddPasswordToUsers: migrating =============================================
	-- add_column(:users, :password, :string)
	   -> 0.0105s
	==  AddPasswordToUsers: migrated (0.0108s) ====================================

### add password text field to sign up form
	limingth@gmail ~/Github/myTwetter/Twetter$ vi app/views/welcome/_sign_up.html.erb 
	  9     <div class="pull-left">
	 10         <%= form_for @user do |f| %>
	 11           <%= f.label :name %>
	 12           <%= f.text_field :name %><br />
	 13 
	 14           <%= f.label :username %>
	 15           <%= f.text_field :username %><br />
	 16 
	 17           <%= f.label :password%>
	 18           <%= f.text_field :password%><br />
	 19           
	 20           <%= f.submit %>
	 21         <% end %>
	 22     </div>

### refresh web browser localhost:3000
* now you can see sign up form with 2 text field

![view-add-password](view-add-password.png)

### git commit

## Form submit function
