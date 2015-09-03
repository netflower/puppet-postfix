require 'rspec-puppet'
require 'puppetlabs_spec_helper/module_spec_helper'

# SimpleCov does not run on Ruby 1.8.7
unless RUBY_VERSION.to_f < 1.9
  require 'simplecov'
  SimpleCov.start do
    add_filter '/spec/'
  end
end

RSpec.configure do |c|
  c.module_path = File.expand_path(File.join(__FILE__, '..', 'fixtures', 'modules'))
  c.manifest_dir = File.expand_path(File.join(__FILE__, '..', 'fixtures', 'manifests'))
  c.hiera_config = File.expand_path(File.join(__FILE__, '..', 'fixtures', 'hiera', 'hiera.yaml'))
end
