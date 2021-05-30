source 'http://rubygems.org'

gem 'activerecord', '4.2.5', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'

gem 'sinatra'
gem 'tux'
gem 'rake'
gem 'require_all'
gem 'shotgun'
gem 'json'
gem 'pry'
gem 'i18n'
gem 'byebug'

group :test do
  gem 'rspec'
  gem 'pry-nav'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end

group :production do
  gem 'pg', '~> 0.20.0'
  gem 'rails_12factor'
end

