source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Braintree for checkout
gem 'braintree', '~> 2.76'
# RSpec for testing
gem 'rspec', '~> 3.6'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# Use pg as the database for Active Record
gem 'pg', '~> 0.18.4'

# My Gemfile actions
# Moved sqlite3 into development/test group
# Added pg gem into production for Heroku's db
# Uncomented out bcrypt so that it could be used for cookies
# Added the follwoing:

# Needed for bootsrap according to https://github.com/twbs/bootstrap-sass#a-ruby-on-rails the other scss-rails gem is already installed
gem 'bootstrap-sass', '~> 3.3.6'
# added autoprefixer-rails-6.3.7 in order for rails g model command to execute
# gem 'autoprefixer-rails', '~> 6.3.7' 

# Rails extracted `assigns` and `assert_template` from ActionDispatch.
gem 'rails-controller-testing', '~> 0.1.1'

# (so far this is not being used) faker gem for fake shirts Faker::commerce
gem 'faker', '~> 1.6', '>= 1.6.6'

# redis gems needed for the shopping basket
gem 'redis', '~> 3.3', '>= 3.3.1'
gem 'hiredis', '~> 0.6.1'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # shows schema in model file, use annotate command in command line
  gem 'annotate'
  # pry-byebug debugging gem
  gem 'pry-byebug'
  # pry
  gem 'pry'
  gem 'pry-rails'
  # rails console prettifies output
  gem "awesome_print", require:"ap"
  # gives more info on rails error page
  gem 'better_errors'
  gem 'binding_of_caller'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
