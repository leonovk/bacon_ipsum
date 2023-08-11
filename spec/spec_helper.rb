# frozen_string_literal: true

require_relative '../lib/bacon_ipsum/http_client'
require_relative '../lib/bacon_ipsum/parser'
require 'webmock/rspec'
require 'json'
require 'byebug'

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'

  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
