source 'https://rubygems.org'
gem 'rails', '3.2.13'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem "rspec-rails", ">= 2.12.2", :group => [:development, :test]
gem "database_cleaner", ">= 1.0.0.RC1", :group => :test
gem "email_spec", ">= 1.4.0", :group => :test
gem "cucumber-rails", ">= 1.3.1", :group => :test, :require => false
#gem "launchy", ">= 2.2.0", :group => :test
gem "guard", :group => :development
gem "capybara", ">= 2.0.3", :group => :test
gem "factory_girl_rails", ">= 4.2.0", :group => [:development, :test]
gem "bootstrap-sass", ">= 2.3.0.0"
gem "devise", ">= 2.2.3"
gem "cancan", ">= 1.6.9"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.1.0"
gem "quiet_assets", ">= 1.0.2", :group => :development
gem "figaro", ">= 0.6.3"
gem "better_errors", ">= 0.7.2", :group => :development
gem "binding_of_caller", ">= 0.7.1", :group => :development, :platforms => [:mri_19, :rbx]
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]
gem "letter_opener"
gem "twitter-bootstrap-rails"
gem "omniauth", "~> 1.1.1"
gem "omniauth-facebook", "~> 1.4.1"
gem 'omniauth-linkedin'

# MOD KIMADA
group :test do
  gem 'ZenTest'
  gem 'simplecov', :require => false
  gem 'shoulda-matchers', :require => false
end

group :development, :test do
  gem 'sqlite3'
  gem 'factory_girl'
  #gem 'ruby-debug19', :require => 'ruby-debug' # MOD KIMADA 2/21/2013 Commented out
end
group :production do
  gem 'therubyracer-heroku', :platform => :ruby # MOD KIMADA 2/21/2013 Added
  gem 'pg'
end

gem "rb-readline"
gem "annotate"
gem "certified"