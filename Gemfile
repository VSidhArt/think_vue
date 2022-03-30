source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise', '~> 4.2'
gem 'fast_jsonapi'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'rails', '~> 6.0.0'
gem 'slim-rails', '~> 3.1', '>= 3.1.1'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'faker'
  gem 'pry', '~> 0.12.2'
  gem 'rspec-rails', '~> 4.0.0.beta2'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
end

group :development do
  gem 'awesome_print'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
