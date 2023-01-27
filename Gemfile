source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end
# gem 'lotvue_core', path: '/home/spandana/projects/other/lotvue_core'
gem 'lotvue_core', git: 'git@github.com:eci-rhc/lv-lotvue-core.git', branch: "master"
group :development do
  gem 'active_record_query_trace'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capistrano', '~> 3.11.0', require: false
  gem 'capistrano-bundler'
  gem 'capistrano-faster-assets', '~> 1.0'
  gem 'capistrano-passenger'
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-rvm'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'meta_request'
  gem 'rack-mini-profiler', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  gem 'ed25519'
  gem 'bcrypt_pbkdf'
end
