# frozen_string_literal: true

require 'typhoeus'

module BaconIpsum
  # http client for requests to bacon ipsum api
  class HttpClient
    BASE_ENDPOINT = 'https://baconipsum.com/api/'
    REQUEST_TIMEOUT = 30

    attr_accessor :paras, :sentences, :type, :start_with_lorem, :format

    def initialize(paras, sentences, type, start_with_lorem, format)
      @paras = paras
      @sentences = sentences
      @type = type
      @start_with_lorem = start_with_lorem
      @format = format
    end

    def get
      response = Typhoeus.get(
        BASE_ENDPOINT,
        params: params,
        timeout: REQUEST_TIMEOUT
      )
      raise 'BaconFail' unless response.success?

      response.body
    end

    private

    def params
      data = {
        type: type,
        paras: paras,
        format: format
      }

      data['sentences'] = sentences if sentences
      data['start-with-lorem'] = start_with_lorem if start_with_lorem

      data
    end
  end
end
