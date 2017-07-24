#
# Cookbook:: dockerinstall
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'apt'

docker_service 'default' do
    action [:create,:start]
end