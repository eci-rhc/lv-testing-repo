# config valid for current version and patch releases of Capistrano
lock '~> 3.11.0'

set :rvm_ruby_version, '2.4.2@default_project'
set :application, 'default_project'
set :repo_url, 'git@github.com:eci-rhc/lv-default-project.git'
set :deploy_via, :remote_cache
set :passenger_restart_with_touch, true

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

namespace :deploy do
  desc 'Unlock bundler, Update lotvue_core gem in current project, relock bundler, Clear old lotvue_core gem revisions'
  before :updated, :update_core do
    on roles(:all) do
      with rails_env: fetch(:rails_env) do
        within release_path do
          execute :bundle, :exec, 'bundle config --delete deployment'
          execute :bundle, :exec, 'bundle config --delete frozen'
          execute :bundle, :exec, 'bundle update --source lotvue_core'
          execute :bundle, :exec, 'bundle clean'
          execute :bundle, :exec, 'bundle config frozen true'
        end
      end
    end
  end
  desc 'Update lotvue_core gem in all projects except current project, clear cache in current project, restart apache'
  after :finished, :update_core_in_all_projects do
    on roles(:all) do
      with rails_env: fetch(:rails_env) do
        within current_path do
          execute :bundle, :exec, 'rake cache:clear'
          if ENV['all_projects'] == 'true' || ENV['batch_deploy'] == 'true'
            nth_list = (ENV['batch_deploy'] == 'true' ? ENV['nth_list'] : 'nil')
            execute :bundle, :exec, "rake deploy:core_in_all_projects[#{fetch(:application)},#{nth_list}]"
            execute 'sudo service apache2 restart'
          end
        end
      end
    end
  end
end

namespace :sidekiq do
  task :restart do
    invoke 'sidekiq:stop'
    invoke 'sidekiq:start'
  end

  before 'deploy:finished', 'sidekiq:restart'

  task :stop do
    on roles(:app) do
      within current_path do
        execute :bundle, "exec sidekiqctl stop tmp/pids/sidekiq.pid 10 -e #{fetch(:stage)} || true"
      end
    end
  end

  task :start do
    on roles(:app) do
      within current_path do
        execute :bundle, "exec sidekiq -d -L log/sidekiq.log -C config/sidekiq.yml -e #{fetch(:stage)}"
      end
    end
  end
end
# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/secrets.yml", "config/master.key", "Resources/companydevcodes.properties", "Resources/destdbdetails.properties", "Resources/sourcedbdetails.properties", "Resources/typesForSQLServer.properties", "config/shards.yml"
# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

set :whenever_identifier, -> { "#{fetch(:application)}_#{fetch(:stage)}" }
