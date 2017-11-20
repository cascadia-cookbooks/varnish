#
# Cookbook:: cas_varnish
# Recipe:: configure
# Description:: Configures Varnish HTTP cache 
#

if node['cas_varnish']['secret']
    file '/etc/varnish/secret' do
        owner   'root'
        group   'root'
        mode    0600
        content node['cas_varnish']['secret']
    end
end

# Configure varnish service template destination
template_destination = value_for_platform(
    %w(centos redhat) => {
        'default' => '/etc/sysconfig/varnish'
    },
    %w(debian ubuntu) => {
        'default' => '/etc/systemd/system/varnish.service.d/customexec.conf'
    }
)

service 'varnish' do
    action [:enable, :start]
end
