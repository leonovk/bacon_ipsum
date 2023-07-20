# frozen_string_literal: true

RSpec.describe BaconIpsum::HttpClient do
  subject(:http_client) { described_class.new(paras, sentences) }

  let(:paras) { 3 }
  let(:sentences) { 5 }

  describe '#initialize' do
    it 'sets the correct values for paras and sentences' do
      expect(http_client.paras).to eq(paras)
      expect(http_client.sentences).to eq(sentences)
    end
  end

  describe '#get' do
    let(:typhoeus_response) { instance_double(Typhoeus::Response) }

    before do
      allow(Typhoeus).to receive(:get).and_return(typhoeus_response)
    end

    context 'when the request is successful' do
      before do
        allow(typhoeus_response).to receive(:success?).and_return(true)
        allow(typhoeus_response).to receive(:body).and_return('Lorem ipsum dolor sit amet')
      end

      it 'returns the response body' do
        expect(http_client.get).to eq('Lorem ipsum dolor sit amet')
      end
    end

    context 'when the request is not successful' do
      before do
        allow(typhoeus_response).to receive(:success?).and_return(false)
      end

      it 'returns false' do
        expect(http_client.get).to eq(false)
      end
    end
  end
end
