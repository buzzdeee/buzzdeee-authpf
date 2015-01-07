require 'spec_helper'
describe 'authpf' do

  context 'with defaults for all parameters' do
    it { should contain_class('authpf') }
  end
end
