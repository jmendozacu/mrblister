# Server Environment
set :environment, 'staging'

# Server Address, username and roles
server '212.48.84.40', user: 'mrblister',roles: %w{app db web}

# Deployment Directory
set :deploy_to, '/home/mrblister/dev-mrblister'

# tmp Dir
set :tmp_dir, "#{fetch(:deploy_to)}/tmp/"

# default branch
set :branch, ENV['branch'] || "develop"

# Custom Capistrano Hooks
before "deploy:symlink:linked_dirs", "magento:setup"