

require_relative 'bacon_ipsum/http_client'
require_relative 'bacon_ipsum/parser'

module BaconIpsum
  def self.generate(paras: 5, sentences: 2)
    response = HttpClient.new(paras, sentences)
    Parser.parse(response.get)
  end
end
