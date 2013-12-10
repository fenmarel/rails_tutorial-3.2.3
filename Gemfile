source 'https://rubygems.org'

ruby "1.9.3"
gem 'rails', '3.2.3'
gem 'bcrypt-ruby', '3.0.1'

# avoid heroku deprecation warnings for rails 4
gem 'rails_12factor'

group :development, :test do 
	gem 'sqlite3', '1.3.5'
	gem 'rspec-rails', '2.9.0'
	gem 'guard-rspec', '0.5.5'

	# optional annotations
	gem 'annotate'
end

# Gems used only for assets and not required # in production environments by default. 

group :assets do
	gem 'sass-rails',   '3.2.4'
	gem 'coffee-rails', '3.2.2'
	gem 'uglifier', '1.2.3'
	gem 'jquery-rails'
	gem 'bootstrap-sass'
end

group :test do
	gem 'rspec-rails', '2.9.0'
	gem 'capybara', '1.1.2'
	gem 'rb-fsevent', :require => false 
	gem 'growl', '1.0.3'
	gem 'guard-spork', '0.3.2'
	gem 'spork', '0.9.0'
	gem 'factory_girl_rails', '1.4.0'
end

group :production do 
	gem 'pg', '0.12.2'
end