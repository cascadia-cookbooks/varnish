require 'spec_helper'

describe 'cas_varnish::default' do
    describe package('varnish') do
        it { should be_installed }
    end

    describe service('varnish') do
        it { should be_running }
    end
end

describe 'cas_varnish::configure' do
    describe file('/etc/varnish/secret') do
        it { should exist }
        it { should be_owned_by 'root' }
        it { should be_grouped_into 'root' }
        it { should be_mode 600 }
        its(:content) { should include 'secretattribute' }
    end
end
