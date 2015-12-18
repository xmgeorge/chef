default[:test_site][:user]      = "redis"
default[:test_site][:app_name] = 'version_2'
default[:test_site][:server_name] = 'launchpad6.dev'
default[:test_site][:server_aliases] = 'manager.launchpad6.dev'
default[:test_site][:app_root] = "/var/www/#{node[:test_site][:app_name]}"
default[:test_site][:db_password] = 'ubuntu'
