# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'rake/extensiontask'

desc "greeter test suite"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = "spec/*_spec.rb"
  t.verbose = false
end

gemspec = Gem::Specification.load('greeter.gemspec')
Rake::ExtensionTask.new do |ext|
  ext.name = 'greeter'
  ext.source_pattern = "*.{cpp}"
  ext.ext_dir = 'ext/greeter'
  ext.lib_dir = 'lib/greeter'
  ext.gem_spec = gemspec
end

task default: [:compile, :spec]
