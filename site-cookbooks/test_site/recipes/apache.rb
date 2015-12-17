# site-cookbooks/test_site/recipes/apache.rb
directory(node[:test_site][:app_root])

web_app(node[:test_site][:app_name]) do
  server_name(node[:test_site][:server_name])
  docroot(node[:test_site][:app_root])
  template('vhost.conf.erb')
end
