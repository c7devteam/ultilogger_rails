source 'https://rubygems.org'
gem 'rails', '>= 5.0.0.rc1', '< 5.1'
gem 'mysql2'
gem 'kaminari'
gem 'puma'
gem 'faker'
gem 'colorize'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  gem 'capistrano', '~> 3.5'
  gem 'capistrano-figaro-yml', '~> 1.0', '>= 1.0.2'
  gem 'capistrano-rails', '~> 1.1', '>= 1.1.6'
  gem 'capistrano-rbenv', '~> 2.0', '>= 2.0.4'
  gem 'listen', '~> 3.0.5'
  gem 'capistrano-passenger'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
