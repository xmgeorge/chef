



default[:test_site][:app_name] = 'test_site'
default[:test_site][:server_name] = 'test_site.yourdomain.com'
default[:test_site][:app_root] = "/var/www/#{node[:test_site][:app_name]}"
