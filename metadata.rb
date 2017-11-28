name 'cas_varnish'
maintainer 'Cascadia Cookbooks'
maintainer_email 'null'
license 'GPL-3.0'
description 'Manages Varnish HTTP cache'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

source_url 'https://github.com/cascadia-cookbooks/varnish'
issues_url 'https://github.com/cascadia-cookbooks/varnish/issues'

supports 'ubuntu', '>= 16.04'
supports 'redhat', '>= 7.0'
supports 'centos', '>= 7.0'
supports 'debian', '>= 8.0'
