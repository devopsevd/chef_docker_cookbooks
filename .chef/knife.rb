# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
ntp_server              "10.118.40.254"
log_level                :info
log_location             STDOUT
node_name                "rmanyala"
client_key               "#{current_dir}/rmanyala.pem"
chef_server_url          "https://Docker0.csa.local/organizations/dpoc"
cookbook_path            ["#{current_dir}/../cookbooks"]

knife[:bootstrap_template] = "#{current_dir}/bootstrap/chef-full-custom.erb"

knife[:vsphere_host] = "10.118.40.6"
#knife[:vsphere_user] = "rmanyala@csa.local"
#knife[:vsphere_pass] = "Password1"
knife[:vsphere_user] = "administrator@vsphere.local"
knife[:vsphere_pass] = "Password!2"
knife[:vsphere_dc] = "Datacenter"
knife[:vsphere_insecure] = true