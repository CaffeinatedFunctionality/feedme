source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use postgres as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

gem 'haml-rails'
gem 'devise'
gem 'kaminari'
gem 'carrierwave'
gem 'carrierwave_direct'
gem 'jquery-validation-rails'
gem 'jquery-ui-rails'
gem 'jquery-rails'
gem 'icalendar'
gem 'acts_as_taggable_on'


# API gems
gem 'grape'
gem 'grape-swagger'
gem 'grape-swagger-ui'
gem 'roar-rails'
gem 'grape-kaminari'
gem "sentry-raven"
gem 'rest-client'
gem 'domainatrix'

group :production, :remote_development do
  #heroku dependencies
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end

gem "letter_opener", :group => :development

group :test, :development do
  # for the sidekiq monitoring app
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'tilt', '1.3.3'
  gem 'pry'
  # gem 'pry-debugger'
  gem 'selenium-webdriver', '~> 2.39.0'
  gem "multi_json", "~> 1.8.2"
  gem 'poltergeist', :git => "https://github.com/jonleighton/poltergeist"
  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rspec-given'
  gem 'rspec-rails', '~> 2.0'
  gem 'rspec-sidekiq'
  gem 'capybara'
  gem 'launchy'
end

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

