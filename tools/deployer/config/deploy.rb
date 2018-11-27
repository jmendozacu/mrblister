# config valid only for current version of Capistrano
# lock '3.6.1'

set :application, 'mrblister'
set :repo_url, 'https://github.com/lordmodkore/mrblister.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# set branch using ENV e.g $ cap production deploy branch=master
set :branch, ENV['branch'] || "master"

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, ''

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :airbrussh.
set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
set :format_options, command_output: true, log_file: 'log/capistrano.log', color: true, truncate: :auto

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'
append :linked_dirs, 'trunk/var', 'trunk/media'

# Default value for keep_releases is 5
set :keep_releases, 3

# Custom Capistrano Hooks

