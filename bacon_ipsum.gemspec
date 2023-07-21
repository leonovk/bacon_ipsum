# frozen_string_literal: true

require_relative 'lib/bacon_ipsum/version'

Gem::Specification.new do |s|
  s.name        = 'bacon_ipsum'
  s.version     = BaconIpsum::VERSION
  s.summary     = 'SDK for JSON API - Bacon Ipsum'
  s.description = 'Allows you to generate random text using Bacon Ipsum API'
  s.authors     = ['Kirill Leonov']
  s.email       = 'leonov835@yandex.ru'
  s.files       = Dir.glob('lib/**/*')
  s.homepage    = 'https://github.com/leonovk/bacon_ipsum'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.7.0'
  s.metadata['homepage_uri'] = s.homepage
  s.metadata['source_code_uri'] = s.homepage
  s.add_dependency 'typhoeus', '~> 1.4'
end
