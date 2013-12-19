
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

* now you can see sign up form with 2 text field

![view-add-sign-up-form](view-add-sign-up-form.png)

### git commit

