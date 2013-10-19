#
# Cookbook Name:: dev-app
# Recipe:: default
#
# Copyright 2013, Fumihiro Ito
#
# All rights reserved - Do Not Redistribute
#

include_recipe "dev-app::ruby"
include_recipe "dev-app::supervisord"
include_recipe "dev-app::nginx"
