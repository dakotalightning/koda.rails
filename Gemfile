ruby '2.2.3'
source 'https://rubygems.org'

gem 'bundler', '>= 1.8.4'
gem 'rails', '4.2.4'
gem "puma"
gem 'mysql2', '~> 0.3.20'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.0'
# gem 'capistrano-rails', group: :development # Use Capistrano for deployment
gem 'redcarpet' # usded for markdown render for the editor on pages
# gem 'coderay' # used to syntax highlight code
gem 'clearance'
gem 'email_validator'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-sass'
gem 'sweet-alert-confirm' # sweet alert confirm, pipline use for sweet alerts
gem 'react-rails', '~> 1.5.0'
# Bower components - gem 'rails-assets-BOWER_PACKAGE_NAME'
source 'https://rails-assets.org' do
  gem 'rails-assets-sweetalert'
  gem 'rails-assets-marked'
  gem 'rails-assets-highlightjs'
  gem 'rails-assets-outdated-browser'
end
group :production do
  gem 'exception_notification'
  gem 'pg'
end
group :development, :test do
  gem 'byebug'
end
group :development, :test do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
