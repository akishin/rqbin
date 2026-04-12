source 'https://rubygems.org'
ruby '3.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 8.0.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
gem 'cssbundling-rails'

# Use Hotwire for the JavaScript library
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'

# Use Puma as the app server
gem 'puma', '~> 6.0'

# Use webrick for development (required for Ruby 3.x)
gem 'webrick', '~> 1.8'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  # gem 'sdoc', '~> 0.4.0',  require: false
end

gem 'slim-rails'

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
  gem 'i18n_generators'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'fuubar'
  gem "factory_bot_rails"
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'rb-inotify'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 2.0'
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
end

group :production do
  # for Heroku
  gem 'pg', '~> 1.5.0'
end

