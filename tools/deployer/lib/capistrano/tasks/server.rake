
# file lib/capistrano/tasks/server.rake
# manuel santos <manugentoo@gmail.com> 
#

namespace :server do

	desc 'restart fast cgi'
	task :fast_cgi_restart do
        on roles(:all) do
            execute "sudo systemctl restart php70-php-fpm.service"
        end
    end
end

