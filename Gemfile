source 'https://rubygems.org'

gem 'rails', '4.1.0'


gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'bootstrap-sass'

gem 'stripe'

# Manage AWS storage
gem "fog", "~> 1.3.1"

# Replacement for rmagick
gem "mini_magick"

group :development do 
  gem 'sqlite3' 
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'


# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

gem 'carrierwave'
gem 'byebug'

group :test do
  gem 'rspec-rails'
  gem 'syntax'
  gem 'factory_girl_rails'
  gem 'email_spec', require: false
  gem "webrat"
  gem 'capybara'
end