# frozen_string_literal: true

require 'json'

module BaconIpsum
  # parser of results received from HTTP client
  class Parser
    attr_accessor :response, :format

    def initialize(response, format)
      @response = response
      @format = format
    end

    def parse
      return unless response
      return response if format != 'json'

      JSON.parse(response)
    end
  end
end
