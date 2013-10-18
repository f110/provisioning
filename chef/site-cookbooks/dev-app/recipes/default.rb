#
# Cookbook Name:: dev-app
# Recipe:: default
#
# Copyright 2013, Fumihiro Ito
#
# All rights reserved - Do Not Redistribute
#

gem_package "bundler" do
  action :install
end

template "/etc/supervisord.d/dev-app.ini" do
  source "supervisord/dev-app.conf.erb"
  mode 0644
  owner "root"
  group "root"
end

template "/etc/nginx/sites-available/dev-app" do
  source "nginx/dev-app"
  mode 0644
  owner "root"
  group "root"
end

link "/etc/nginx/sites-enabled/dev-app" do
  to "/etc/nginx/sites-available/dev-app"
  notifies :reload, 'service[nginx]'
end
