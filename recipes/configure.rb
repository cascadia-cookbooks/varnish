#
# Cookbook:: cas_varnish
# Recipe:: configure
# Description:: Configures Varnish HTTP cache 
#

if node['cas_varnish']['secret']
    file '/etc/varnish/secret' do
        owner 'root'
        group 'root'
        mode 0600
        content node['cas_varnish']['secret']
    end
end

service 'varnish' do
    action [:enable, :start]
end
