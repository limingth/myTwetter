myTwetter
=========

Re-write the whole twetter project code from scratch

## Project name：Twetter 

* Twetter is like Twitter
* Twet is like Tweet

### About how-to

	1. Rails new a project named Twetter
	https://github.com/limingth/myRoR/blob/master/1-build-project-wikiful.md

	2. Style Twetter using bootstrap
	https://github.com/limingth/myRoR/blob/master/4-style-wikiful-with-twitter-bootstrap.md
	a) add nav bar
	b) add left sidebar
	c) add right sidebar

	3. Use SQLite3 as database and Create the User Model
	https://github.com/limingth/myRoR/blob/master/2-work-with-psql.md

	4. Add attributes and Sign Up Form
	https://github.com/limingth/myRoR/blob/master/5-user-hub-project.md

	5. Add User Authentication feature
	https://github.com/limingth/myRoR/blob/master/6-user-authentication.md
	a) add gem crypt
	b) add flash message
	c) add session controller
	d) set a @current_user

	6. Add Twets data model
	a) a User can post a Twet
	b) a User can see his Twets
	c) a User can see other User's Twets

	7. Add Follow Model
	a) a User can Follow other User
	b) a User can see the User's Tweets who he has followed

	8. Add Unfollow functionality
	a) a User can UnFollow a User who he has followed
	b) a User can Not see the User's Tweets he has Not followed

	9. Add ReTwet feature
	a) a User can ReTwet a User's Tweet who he has followed
	b) a User can see which Tweet he has ReTwetted
	c) a User can see all Tweets which been twetted and retwetted by one he is following

	10. Add Gravatars feature
	a) add user pictures to his left sidebar view if his email associated with Gravatar
