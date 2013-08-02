source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.0'
group :production do
  gem 'rails_12factor'
end
gem 'turbolinks'
gem 'protected_attributes' #this keeps Rails 4 using the old Rails 3 attr_accessible

gem 'jbuilder', '~> 1.2'

gem 'jquery-rails'

gem 'pg'
gem 'devise'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'haml'
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'

gem 'sass-rails', '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem "compass-rails", github: "milgner/compass-rails", ref: "1749c06f15dc4b058427e7969810457213647fb8"
gem 'foundation-icons-sass-rails'
gem 'zurb-foundation'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-stack_explorer'
  gem 'quiet_assets'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'annotate'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 2.12'
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'capybara'
  gem 'cucumber'
end

group :development do
  gem 'better_errors'
end



group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
