require 'spec_helper'

describe 'cas_varnish::default' do
    describe package('varnish') do
        it { should be_installed }
    end
end
