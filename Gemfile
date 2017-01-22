source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

group :default do
  gem 'rails', '~> 5.0.1'
  gem 'webpacker', github: 'rails/webpacker'
  gem 'sqlite3'
  gem 'puma', '~> 3.0'
  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.2'
  gem 'jquery-rails'
  gem 'turbolinks', '~> 5'
  gem 'jbuilder', '~> 2.5'
end

group :development, :test do
  gem 'awesome_print'
  gem 'hirb-unicode-steakknife'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'
  gem 'materialize-sass'
end

group :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec', require: false
  gem 'spring-commands-rubocop', require: false
  gem 'annotate'
  gem 'rubocop'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-rubocop'
end
