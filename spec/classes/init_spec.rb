require 'spec_helper'

describe 'postfix' do
  context 'with defaults' do
    it { should contain_class('postfix::install') }
    it { should contain_class('postfix::config') }
    it { should contain_class('postfix::service') }
  end
end
