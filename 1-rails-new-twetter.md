
# Rails new a project named Twetter

## Set up a new project

### rails new Twetter
	limingth@gmail ~/Github/myTwetter$ rails new Twetter
	      create  
	      create  README.rdoc
	      create  Rakefile
	      create  config.ru
	      create  .gitignore
	      create  Gemfile
	      create  app
	      create  app/assets/javascripts/application.js
	      create  app/assets/stylesheets/application.css
	      create  app/controllers/application_controller.rb
	      create  app/helpers/application_helper.rb
	      create  app/views/layouts/application.html.erb
	      create  app/assets/images/.keep
	      create  app/mailers/.keep
	      create  app/models/.keep
	      create  app/controllers/concerns/.keep
	      create  app/models/concerns/.keep
	      create  bin
	      create  bin/bundle
	      create  bin/rails
	      create  bin/rake
	      create  config
	      create  config/routes.rb
	      create  config/application.rb
	      create  config/environment.rb
	      create  config/environments
	      create  config/environments/development.rb
	      create  config/environments/production.rb
	      create  config/environments/test.rb
	      create  config/initializers
	      create  config/initializers/backtrace_silencers.rb
	      create  config/initializers/filter_parameter_logging.rb
	      create  config/initializers/inflections.rb
	      create  config/initializers/mime_types.rb
	      create  config/initializers/secret_token.rb
	      create  config/initializers/session_store.rb
	      create  config/initializers/wrap_parameters.rb
	      create  config/locales
	      create  config/locales/en.yml
	      create  config/boot.rb
	      create  config/database.yml
	      create  db
	      create  db/seeds.rb
	      create  lib
	      create  lib/tasks
	      create  lib/tasks/.keep
	      create  lib/assets
	      create  lib/assets/.keep
	      create  log
	      create  log/.keep
	      create  public
	      create  public/404.html
	      create  public/422.html
	      create  public/500.html
	      create  public/favicon.ico
	      create  public/robots.txt
	      create  test/fixtures
	      create  test/fixtures/.keep
	      create  test/controllers
	      create  test/controllers/.keep
	      create  test/mailers
	      create  test/mailers/.keep
	      create  test/models
	      create  test/models/.keep
	      create  test/helpers
	      create  test/helpers/.keep
	      create  test/integration
	      create  test/integration/.keep
	      create  test/test_helper.rb
	      create  tmp/cache
	      create  tmp/cache/assets
	      create  vendor/assets/javascripts
	      create  vendor/assets/javascripts/.keep
	      create  vendor/assets/stylesheets
	      create  vendor/assets/stylesheets/.keep
	         run  bundle install
	Fetching gem metadata from https://rubygems.org/..........
	Fetching gem metadata from https://rubygems.org/..
	Resolving dependencies...
	Using rake (10.1.0) 
	Using i18n (0.6.9) 
	Using minitest (4.7.5) 
	Using multi_json (1.8.2) 
	Using atomic (1.1.14) 
	Using thread_safe (0.1.3) 
	Using tzinfo (0.3.38) 
	Using activesupport (4.0.2) 
	Using builder (3.1.4) 
	Using erubis (2.7.0) 
	Using rack (1.5.2) 
	Using rack-test (0.6.2) 
	Using actionpack (4.0.2) 
	Using mime-types (1.25.1) 
	Using polyglot (0.3.3) 
	Using treetop (1.4.15) 
	Using mail (2.5.4) 
	Using actionmailer (4.0.2) 
	Using activemodel (4.0.2) 
	Using activerecord-deprecated_finders (1.0.3) 
	Using arel (4.0.1) 
	Using activerecord (4.0.2) 
	Using bundler (1.3.5) 
	Using coffee-script-source (1.6.3) 
	Using execjs (2.0.2) 
	Using coffee-script (2.2.0) 
	Using thor (0.18.1) 
	Using railties (4.0.2) 
	Using coffee-rails (4.0.1) 
	Using hike (1.2.3) 
	Using jbuilder (1.5.3) 
	Using jquery-rails (3.0.4) 
	Using json (1.8.1) 
	Using tilt (1.4.1) 
	Using sprockets (2.10.1) 
	Using sprockets-rails (2.0.1) 
	Using rails (4.0.2) 
	Using rdoc (3.12.2) 
	Using sass (3.2.12) 
	Using sass-rails (4.0.1) 
	Using sdoc (0.3.20) 
	Using sqlite3 (1.3.8) 
	Using turbolinks (2.1.0) 
	Using uglifier (2.3.3) 
	Your bundle is complete!
	Use `bundle show [gemname]` to see where a bundled gem is installed.
	limingth@gmail ~/Github/myTwetter$ ls
	0-rails-new-twetter.md	README.md		Twetter
	limingth@gmail ~/Github/myTwetter$ cd Twetter/
	limingth@gmail ~/Github/myTwetter/Twetter$ ls
	Gemfile		README.rdoc	app		config		db		log		test		vendor
	Gemfile.lock	Rakefile	bin		config.ru	lib		public		tmp
	limingth@gmail ~/Github/myTwetter/Twetter$ vi Gemfile
	limingth@gmail ~/Github/myTwetter/Twetter$ 

### bundle install
	limingth@gmail ~/Github/myTwetter/Twetter$ bundle install
	Using rake (10.1.0) 
	Using i18n (0.6.9) 
	Using minitest (4.7.5) 
	Using multi_json (1.8.2) 
	Using atomic (1.1.14) 
	Using thread_safe (0.1.3) 
	Using tzinfo (0.3.38) 
	Using activesupport (4.0.2) 
	Using builder (3.1.4) 
	Using erubis (2.7.0) 
	Using rack (1.5.2) 
	Using rack-test (0.6.2) 
	Using actionpack (4.0.2) 
	Using mime-types (1.25.1) 
	Using polyglot (0.3.3) 
	Using treetop (1.4.15) 
	Using mail (2.5.4) 
	Using actionmailer (4.0.2) 
	Using activemodel (4.0.2) 
	Using activerecord-deprecated_finders (1.0.3) 
	Using arel (4.0.1) 
	Using activerecord (4.0.2) 
	Using coffee-script-source (1.6.3) 
	Using execjs (2.0.2) 
	Using coffee-script (2.2.0) 
	Using thor (0.18.1) 
	Using railties (4.0.2) 
	Using coffee-rails (4.0.1) 
	Using hike (1.2.3) 
	Using jbuilder (1.5.3) 
	Using jquery-rails (3.0.4) 
	Using json (1.8.1) 
	Using bundler (1.3.5) 
	Using tilt (1.4.1) 
	Using sprockets (2.10.1) 
	Using sprockets-rails (2.0.1) 
	Using rails (4.0.2) 
	Using rdoc (3.12.2) 
	Using sass (3.2.12) 
	Using sass-rails (4.0.1) 
	Using sdoc (0.3.20) 
	Using sqlite3 (1.3.8) 
	Using turbolinks (2.1.0) 
	Using uglifier (2.3.3) 
	Your bundle is complete!
	Use `bundle show [gemname]` to see where a bundled gem is installed.
	limingth@gmail ~/Github/myTwetter/Twetter$ 

## Set up the welcome page

### change root route
	limingth@gmail ~/Github/myTwetter/Twetter$ vi config/routes.rb 
	  1 Twetter::Application.routes.draw do
	  2   # The priority is based upon order of creation: first created -> highest priority.
	  3   # See how all your routes lay out with "rake routes".
	  4 
	  5   # You can have the root of your site routed with "root"
	  6   root 'welcome#index'

### rails generate controller welcome index
	limingth@gmail ~/Github/myTwetter/Twetter$ rails generate controller welcome index
	      create  app/controllers/welcome_controller.rb
	       route  get "welcome/index"
	      invoke  erb
	      create    app/views/welcome
	      create    app/views/welcome/index.html.erb
	      invoke  test_unit
	      create    test/controllers/welcome_controller_test.rb
	      invoke  helper
	      create    app/helpers/welcome_helper.rb
	      invoke    test_unit
	      create      test/helpers/welcome_helper_test.rb
	      invoke  assets
	      invoke    coffee
	      create      app/assets/javascripts/welcome.js.coffee
	      invoke    scss
	      create      app/assets/stylesheets/welcome.css.scss
	limingth@gmail ~/Github/myTwetter/Twetter$ 

### refresh web browser localhost:3000
	Welcome#index

	Find me in app/views/welcome/index.html.erb

### git commit
	limingth@gmail ~/Github/myTwetter/Twetter$ git status
	# On branch master
	# Your branch is ahead of 'origin/master' by 1 commit.
	#   (use "git push" to publish your local commits)
	#
	# Changes not staged for commit:
	#   (use "git add <file>..." to update what will be committed)
	#   (use "git checkout -- <file>..." to discard changes in working directory)
	#
	#	modified:   ../1-rails-new-twetter.md
	#	modified:   ../README.md
	#	modified:   config/routes.rb
	#
	# Untracked files:
	#   (use "git add <file>..." to include in what will be committed)
	#
	#	app/assets/javascripts/welcome.js.coffee
	#	app/assets/stylesheets/welcome.css.scss
	#	app/controllers/welcome_controller.rb
	#	app/helpers/welcome_helper.rb
	#	app/views/welcome/
	#	test/controllers/welcome_controller_test.rb
	#	test/helpers/welcome_helper_test.rb
	no changes added to commit (use "git add" and/or "git commit -a")
	limingth@gmail ~/Github/myTwetter/Twetter$ git add .
	limingth@gmail ~/Github/myTwetter/Twetter$ git commit -a -m "Rails new a project named Twetter"
	[master 92fd109] Rails new a project named Twetter
	 10 files changed, 75 insertions(+), 3 deletions(-)
	 create mode 100644 Twetter/app/assets/javascripts/welcome.js.coffee
	 create mode 100644 Twetter/app/assets/stylesheets/welcome.css.scss
	 create mode 100644 Twetter/app/controllers/welcome_controller.rb
	 create mode 100644 Twetter/app/helpers/welcome_helper.rb
	 create mode 100644 Twetter/app/views/welcome/index.html.erb
	 create mode 100644 Twetter/test/controllers/welcome_controller_test.rb
	 create mode 100644 Twetter/test/helpers/welcome_helper_test.rb
	limingth@gmail ~/Github/myTwetter/Twetter$ git push
	Counting objects: 90, done.
	Delta compression using up to 2 threads.
	Compressing objects: 100% (75/75), done.
	Writing objects: 100% (88/88), 18.40 KiB | 0 bytes/s, done.
	Total 88 (delta 10), reused 0 (delta 0)
	To git@github.com:limingth/myTwetter.git
	   eb07e96..92fd109  master -> master
	limingth@gmail ~/Github/myTwetter/Twetter$ 

## Done! 
see next step [Style Twetter using bootstrap](2-style-twetter-using-bootstrap.md)
