source 'https://rubygems.org'
ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0',  require: false
end

gem 'less-rails'
gem 'slim-rails'
gem 'twitter-bootstrap-rails', '~> 2.2.8'
gem 'simple_form'

gem 'settingslogic'

gem 'rack-mini-profiler'
gem "awesome_print"
gem 'tapp'
group :development do
  gem "hirb"
  gem "hirb-unicode"
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem "meta_request"
  gem 'annotate', ">=2.5.0"
  gem 'quiet_assets'
  gem 'i18n_generators'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'fuubar'
  gem 'factory_girl_rails'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'rb-inotify'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
end

group :production do
  # for Heroku
  gem 'pg'
  gem 'rails_12factor'
end

