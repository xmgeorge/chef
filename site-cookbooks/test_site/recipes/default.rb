#package 'vim'
include_recipe 'test_site::apache'
#include_recipe 'test_site::mysql'
include_recipe 'apt'
package "mediainfo" do
  action :install
end

user node[:test_site][:user] do
  action :create
  system false
  shell "/bin/bash"
end

include_recipe 'apache2'
# disable default site
apache_site '000-default' do
#enable true
enable false
end

apache_module 'mpm_event' do
enable false
end
apache_module 'mpm_prefork' do
enable true
end

package "php5-memcache" do
  action :install
end
package "php-pear" do
  action :install
end
package "php5-gd" do
  action :install
end
