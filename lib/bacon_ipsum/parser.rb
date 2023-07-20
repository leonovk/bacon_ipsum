# frozen_string_literal: true

require 'json'

module BaconIpsum
  class Parser
    def self.parse(response)
      return unless response

      JSON.parse(response)
    end
  end
end
