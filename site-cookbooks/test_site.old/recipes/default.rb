#
# Cookbook Name:: george
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


include_recipe 'apache'
#include_recipe 'test_site::mysql'


directory(node[:test_site][:app_root])

web_app(node[:test_site][:app_name]) do
  server_name(node[:test_site][:server_name])
  docroot(node[:test_site][:app_root])
  template('vhost.conf.erb')
end
