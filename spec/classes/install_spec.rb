require 'spec_helper'

describe 'postfix::service' do
  describe 'when using defaults' do
    it { should contain_package('postfix').with(
      :ensure   => 'installed',
    )}
  end
end
