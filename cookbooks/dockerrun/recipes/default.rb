#
# Cookbook:: dockerrun
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Pull latest image
docker_image 'busybox' do
    action :pull
end

# Run container exposing ports
docker_container 'echo_server' do
    repo 'busybox'
    port '1234:1234'
    command "nc -ll -p 1234 -e /bin/cat"
end

