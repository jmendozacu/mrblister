# Server Environment
set :environment, 'staging'

# Server Address, username and roles
server '101.0.85.54', user: 'gpp2follow', roles: %w{app db web}

# Deployment Directory
set :deploy_to, '/home/gpp2follow/public_html/'

# tmp Dir
set :tmp_dir, "#{fetch(:deploy_to)}/tmp/"