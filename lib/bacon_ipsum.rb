# frozen_string_literal: true

require_relative 'bacon_ipsum/http_client'
require_relative 'bacon_ipsum/parser'

module BaconIpsum
  def self.generate(paras: 5,
                    sentences: nil,
                    type: 'meat-and-filler',
                    start_with_lorem: nil,
                    format: 'json')

    response = HttpClient.new(paras, sentences, type, start_with_lorem, format)
    Parser.new(response.get, format).parse
  end
end
