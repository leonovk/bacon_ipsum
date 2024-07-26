# frozen_string_literal: true

RSpec.describe BaconIpsum::HttpClient do
  subject(:http_client) { described_class.new(paras, sentences, type, start_with_lorem, format) }

  let(:paras) { 3 }
  let(:sentences) { 5 }
  let(:type) { 'all-meat' }
  let(:start_with_lorem) { 1 }
  let(:format) { 'json' }

  describe '#initialize' do
    it 'sets the correct values for paras and sentences' do
      expect(http_client.paras).to eq(paras)
      expect(http_client.sentences).to eq(sentences)
      expect(http_client.type).to eq(type)
      expect(http_client.start_with_lorem).to eq(start_with_lorem)
      expect(http_client.format).to eq(format)
    end
  end

  describe '#get' do
    let(:typhoeus_response) { instance_double(Typhoeus::Response) }

    before do
      allow(Typhoeus).to receive(:get).and_return(typhoeus_response)
    end

    context 'when the request is successful' do
      before do
        allow(typhoeus_response).to receive_messages(success?: true, body: 'Lorem ipsum dolor sit amet')
      end

      it 'returns the response body' do
        expect(http_client.get).to eq('Lorem ipsum dolor sit amet')
      end
    end

    context 'when the request is not successful' do
      before do
        allow(typhoeus_response).to receive(:success?).and_return(false)
      end

      it 'raise error' do
        expect { http_client.get }
          .to raise_error(BaconError, 'response not success')
      end
    end
  end
end
