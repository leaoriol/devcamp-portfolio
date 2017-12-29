source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'awesome_rails_console'
gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+
gem 'devise'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'oriol_view_tool', git: 'https://github.com/leaoriol/oriol_view_tool'
gem 'petergate', '~> 1.7'
gem 'font-awesome-rails', '~>4.7', '>= 4.7.0.1'
gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick', '~> 4.6'
gem 'carrierwave-aws', '~> 1.0', '>= 1.0.2'
gem 'dotenv-rails', '~> 2.1', '>= 2.1.2'
gem 'cocoon', '~> 1.2', '>= 1.2.9'
gem 'gritter', '~> 1.2'
gem 'twitter', '~> 5.16'
gem 'redis', '~> 3.3', '>= 3.3.1'