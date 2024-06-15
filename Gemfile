# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0.8', '>= 7.0.8.1'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'jsbundling-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem 'cssbundling-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem 'kredis'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem 'sassc-rails'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem 'image_processing', '~> 1.2'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  # RuboCop
  # https://github.com/rubocop/rubocop
  gem 'rubocop', require: false
  gem 'rubocop-ast', require: false
  gem 'rubocop-capybara', require: false
  gem 'rubocop-factory_bot', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rspec_rails', require: false
  gem 'rubocop-rubycw', require: false
  gem 'rubocop-thread_safety', require: false

  # SCSS Linter
  # https://github.com/sds/scss-lint
  gem 'scss_lint', require: false

  # A static analysis security vulnerability scanner for Ruby on Rails applications
  # https://github.com/presidentbeef/brakeman
  gem 'brakeman', require: false

  # Generating fake data such as names, addresses.
  # https://github.com/faker-ruby/faker
  gem 'faker'

  # Overcommit
  # https://github.com/sds/overcommit
  gem 'overcommit', require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem 'rack-mini-profiler'

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem 'spring'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'

  # Rails integration for factory_bot (fixtures for tests).
  # https://github.com/thoughtbot/factory_bot_rails
  gem 'factory_bot_rails'

  # Add assigns and assert_template to controller tests.
  # https://github.com/rails/rails-controller-testing
  gem 'rails-controller-testing'

  # RSpec testing framework integration to Ruby on Rails.
  # https://github.com/rspec/rspec-rails
  gem 'rspec-rails'

  # Code coverage for Ruby
  # https://github.com/simplecov-ruby/simplecov
  gem 'simplecov', require: false

  # SimpleCov formatter to generate coverage in a LCOV format.
  # https://github.com/fortissimo1997/simplecov-lcov
  gem 'simplecov-lcov', require: false

  # A mocking library for testing stripe.
  # https://github.com/stripe-ruby-mock/stripe-ruby-mock
  gem 'stripe-ruby-mock', '3.1.0.rc3', require: 'stripe_mock'

  # Added "time travel" and "time freezing" for tests.
  # https://github.com/travisjeffery/timecop
  gem 'timecop', '0.9.6'

  # One-liner tests for common Rails functionality.
  # https://github.com/thoughtbot/shoulda-matchers)
  gem 'shoulda-matchers'

  # Database Cleaner
  # ttps://github.com/DatabaseCleaner/database_cleaner
  gem 'database_cleaner'
end
