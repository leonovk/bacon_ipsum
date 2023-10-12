# frozen_string_literal: true

require 'dotenv/load'
require_relative 'lib/bacon_ipsum/version'

task :build_and_push do
  puts "build bacon_ipsum #{BaconIpsum::VERSION}"
  system 'gem build bacon_ipsum.gemspec'
  file_name = "bacon_ipsum-#{BaconIpsum::VERSION}.gem"
  system "gem push #{file_name} -k rubygems"
  File.delete(file_name)
  puts 'done'
end
