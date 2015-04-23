source 'https://rubygems.org'
ruby '2.1.5'

gem 'rails'
gem 'sidekiq'
gem 'carrierwave'
gem 'figaro', '>= 1.0.0.rc1'
gem 'fog'
gem 'mini_magick'
gem 'wkhtmltopdf-binary'
gem 'pdfkit'
gem 'awesome_print'
gem 'httmultiparty'

group :development do
  gem 'binding_of_caller', platforms: [:mri_21]
  gem 'quiet_assets'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'spring'
  gem 'pry-byebug'
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'jazz_hands', github: "nixme/jazz_hands", branch: "bring-your-own-debugger"
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
end

group :production, :staging do
  gem 'heroku-deflater'
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'capybara-email'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'timecop'
end
