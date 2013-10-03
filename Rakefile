# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'
require 'jeweler'

Jeweler::Tasks.new do |gemspec|
  gemspec.name = "spork-micron"
  gemspec.summary = "Micron plugin for Spork"
  gemspec.description = "A micron plugin for Spork"
  gemspec.email = "chetan@pixelcop.net"
  gemspec.homepage = "http://github.com/chetan/spork-micron"
  gemspec.authors = ["Chetan Sarva"]
  gemspec.license = "MIT"
  gemspec.executables = ["testdrb"]
end
Jeweler::RubygemsDotOrgTasks.new

Dir['tasks/**/*.rake'].each { |rake| load rake }

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

task :default => :test

require 'yard'
YARD::Rake::YardocTask.new

