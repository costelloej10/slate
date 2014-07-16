# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, "RunApiDocs"
set :repo_url, 'git@github.com:RUNDSP/run_api_docs.git'
set :deploy_to, "/mnt/app/#{fetch(:application)}"
set :ssh_options, { forward_agent: true }

# SSHKit.config.command_map[:rake]  = "bundle exec rake"

## hipchat ##
require 'hipchat/capistrano'
set :hipchat_token, "263a958e7966308a16240ba789e37f"
set :hipchat_room_name, "Engineering"
set :hipchat_announce, true

# Default branch is :master
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default value for :log_level is :debug
set :log_level, :debug

# set :linked_dirs, %w{ log }

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app) do
      execute "cd #{release_path} && bundle exec middleman build"
    end
  end

  after :publishing, :restart

end
