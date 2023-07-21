# frozen_string_literal: true

require 'typhoeus'

module BaconIpsum
  class HttpClient
    BASE_ENDPOINT = 'https://baconipsum.com/api/'
    REQUEST_TIMEOUT = 30

    attr_accessor :paras, :sentences

    def initialize(paras, sentences)
      @paras = paras
      @sentences = sentences
    end

    def get
      response = Typhoeus.get(
        BASE_ENDPOINT,
        params: params,
        timeout: REQUEST_TIMEOUT
      )
      return false unless response.success?

      response.body
    end

    private

    def params
      {
        type: 'all-meat',
        paras: paras,
        sentences: sentences
      }
    end
  end
end
