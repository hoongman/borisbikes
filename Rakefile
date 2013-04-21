require 'rubygems'
require 'bundler'
Bundler.setup

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) {|rspec| rspec.rspec_opts = '-c -f n'}

task default: [:spec]
