#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright 2013, Fumihiro Ito
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

# install depends on package
package "openssl-devel" do
  action :install
end

rbenv_ruby node['ruby']['version']

rbenv_gem "bundler" do
  ruby_version node['ruby']['version']
end
