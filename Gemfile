# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0.beta3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '>= 4.0.0.rc.3'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'

# devise for login
gem 'devise'
gem 'devise-i18n'
# for permalinks
gem 'friendly_id'
# brita can be used in APIs and full rails apps
gem 'brita'
# uses elasticsearch with many more options for fulltext search, e.g. for misspellings
gem 'searchkick'
# admin backend
gem 'activeadmin'

# für hhtp request
gem 'httparty'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'
gem "mini_magick"
# gem 'carrierwave', '~> 1.0'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# new Relic for monitoring
gem 'newrelic_rpm'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # TODO: get infos about capybara -> for testing
  # gem 'capybara'

  # - UML diagram generation for Rails projects, capable of analyzing existing models and controllers
  gem 'railroady'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # better errors
  gem 'better_errors'
  gem 'binding_of_caller'
  # FIXME: can't start server with bullet -> read docu
  # bullet - helps you improve your usage of activerecord queries
  # gem 'bullet'
  # annotate - inserts the db schema as comments in your model.rb file
  gem 'annotate'
  # open emails in browser
  gem 'dokku-cli'
  gem 'letter_opener'
  gem 'solargraph'
  # use dokku
  gem 'dokku-cli'
  # for performance
  gem 'rack-mini-profiler', require: false
end

group :production do
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
