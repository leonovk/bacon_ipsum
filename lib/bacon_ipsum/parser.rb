# frozen_string_literal: true

require 'json'

module BaconIpsum
  class Parser
    attr_reader :response, :format

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
