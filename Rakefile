#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require 'cucumber/rake/task'

desc 'Default: run specs.'
task :default => [:spec, :cucumber]

desc "Run specs"
RSpec::Core::RakeTask.new

desc "Run features"
Cucumber::Rake::Task.new # defines a task named cucumber

