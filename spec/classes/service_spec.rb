require 'spec_helper'

describe 'postfix::service' do
  describe 'when using defaults' do
    it { should contain_service('postfix').with(
      :ensure   => 'running',
    )}
  end
end
