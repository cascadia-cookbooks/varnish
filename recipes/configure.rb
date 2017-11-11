#
# Cookbook:: cas_varnish
# Recipe:: configure
# Description:: Configures Varnish HTTP cache 
#

service 'varnish' do
    action [:enable, :start]
end
