#
# Cookbook:: cas_varnish
# Recipe:: dependencies
# Description:: Varnish cache dependencies
#

case node['platform_family']
when 'debian'

    apt_repository 'varnish' do
        uri "https://packagecloud.io/varnishcache/varnish#{node['cas_varnish']['version']}/#{node['platform']}"
        distribution "#{node['lsb']['codename']}"
        key "https://packagecloud.io/varnishcache/varnish#{node['cas_varnish']['version']}/gpgkey"
        components ['main']
    end

when 'rhel'

    yum_repository 'varnish' do
        description 'Varnish Repository - Packagecloud'
        baseurl "https://packagecloud.io/varnishcache/varnish#{node['cas_varnish']['version']}/el/#{node['platform_version'].to_i}/$basearch/"
        enabled true
        gpgcheck false
        gpgkey "https://packagecloud.io/varnishcache/varnish#{node['cas_varnish']['version']}/gpgkey"
        action :create
    end

end
