source 'http://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'pg'

# Use sqlite3 as the database for Active Record
#Google Auth
source 'http://rubygems.org'

gem 'sqlite3-ruby', '1.2.5', :require => 'sqlite3fty-generators'
gem 'google-api-client', :require => 'google/api_client'
gem 'omniauth', '1.1.0'
gem 'omniauth-google-oauth2', :git => 'https://github.com/zquestz/omniauth-google-oauth2.git'
gem 'nifty-generators'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 1.2'

group :development do
  gem 'thin'
  gem 'capistrano', '~> 2.15'
  gem 'capistrano-ext'

  gem 'rvm-capistrano'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
end

group :development, :test do
  gem 'debugger'
  gem 'factory_girl_rails' # Needed in dev for generating when running scaffold
  gem 'rspec-rails'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'
