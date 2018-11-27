#
# file lib/capistrano/tasks/magneto.rake
# manuel santos <manugentoo@gmail.com> 
#

set :magento_ver, 'magento-1.9.3.9'

namespace :magento do	
	desc 'setup magento environment'
	task :setup do
		on roles(:all) do

			# update permission
			execute "echo updating permissions"
			execute "chmod 755 -R #{fetch(:release_path)}"
			
			# copy index.php, .htaccess and local.xml for each environment
			execute "cd #{fetch(:release_path)}"
			execute "echo 'Copying app-data files (index.php, .htaccess, local.xml) ...'"
			execute "cp -rfv #{fetch(:release_path)}/env/#{fetch(:environment)}/app-data/. #{fetch(:release_path)}/trunk"

		end
	end
	
end
