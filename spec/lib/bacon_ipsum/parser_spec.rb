# frozen_string_literal: true

RSpec.describe BaconIpsum::Parser do
  subject(:parse) { described_class.parse(response) }

  context 'when response nil' do
    let(:response) { nil }

    it 'returns nil' do
      expect(parse).to eq(nil)
    end
  end

  context 'when response json' do
    let(:response) { ['test'].to_json }

    it 'returns array' do
      expect(parse).to be_a(Array)
    end
  end
end
