# frozen_string_literal: true

RSpec.describe BaconIpsum::Parser do
  subject(:parse) { described_class.new(response, format).parse }

  context 'when response nil' do
    let(:response) { nil }
    let(:format) { nil }

    it 'returns nil' do
      expect(parse).to eq(nil)
    end
  end

  context 'when response html' do
    let(:response) { 'html' }
    let(:format) { 'html' }

    it 'returns string' do
      expect(parse).to eq(response)
    end
  end

  context 'when response text' do
    let(:response) { 'text' }
    let(:format) { 'text' }

    it 'returns string' do
      expect(parse).to eq(response)
    end
  end

  context 'when response json' do
    let(:response) { ['test'].to_json }
    let(:format) { 'json' }

    it 'returns array' do
      expect(parse).to be_a(Array)
    end
  end
end
