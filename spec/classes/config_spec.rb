require 'spec_helper'

describe 'postfix::config' do
  it { should contain_file('/etc/mailname') }

  context 'when using defaults' do
    let(:node) { 'foo.example.com' }

    it { should contain_file('/etc/aliases').with({
      'content' => /### This file is managed by puppet/})
    }

    it { should contain_file('/etc/mailname').with({
      'content' => /foo.example.com/})
    }

    it { should contain_exec('newaliases').with({
      'refreshonly' => 'true'})
    }
  end
end
