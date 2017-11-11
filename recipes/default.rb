#
# Cookbook:: cas_varnish
# Recipe:: default
# Description:: Manages Varnish HTTP cache 
#

include_recipe 'cas_varnish::dependencies'
include_recipe 'cas_varnish::install'
