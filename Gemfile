source 'https://rubygems.org'
ruby "2.3.0"

gem 'rails', '~> 5.0.0'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
## extra ##
# the unicorn application server
gem 'unicorn', '~> 4.8.3'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  ## extra ##
  gem 'capistrano', '~> 3.4.0'
  # rails specific capistrano functions
  gem 'capistrano-rails', '~> 1.1.0'
  # integrate bundler with capistrano
  gem 'capistrano-bundler', '~> 1.1.0'
  gem 'capistrano-rbenv', '~> 2.0'
  # include helper tasks
  gem 'capistrano-cookbook', require: false
end

group :test do
  gem "capybara", "~> 2.4"
  gem "factory_girl_rails", "~> 4.5"
  gem "selenium-webdriver", "~> 2.45"
  gem "database_cleaner", "~> 1.4"
  gem "email_spec", "~> 1.6.0"
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
