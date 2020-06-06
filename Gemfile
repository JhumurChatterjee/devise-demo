source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
gem "mysql2", ">= 0.4.4", "< 0.6.0"
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem "bootsnap", ">= 1.1.0", require: false
gem "devise"

group :development, :test, :staging do
  gem "faker", "~> 1.9"
  gem "pry-rails", "~> 0.3.6"
  gem "rspec-rails", "~> 3.7"
end

group :development do
  gem "letter_opener", "~> 1.7"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rack-mini-profiler", "~> 1.1"
  gem "rubocop", "~> 0.77.0"
  gem "rubocop-performance", "~> 1.5", ">= 1.5.1"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "selenium-webdriver"
  gem "shoulda-callback-matchers", "~> 1.1", ">= 1.1.4"
  gem "shoulda-matchers", "~> 4.0", ">= 4.0.1"
  gem "simplecov", "~> 0.18.5"
end
