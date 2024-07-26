# frozen_string_literal: true

RSpec.describe BaconIpsum do
  subject(:generate) do
    described_class.generate(paras: 5,
                             sentences: nil,
                             type: 'meat-and-filler',
                             start_with_lorem: nil,
                             format: 'text')
  end

  let(:typhoeus_response) { instance_double(Typhoeus::Response) }
  let(:result_text) { 'Lorem ipsum dolor sit amet' }

  before do
    allow(Typhoeus).to receive(:get).and_return(typhoeus_response)
    allow(typhoeus_response).to receive_messages(success?: true, body: result_text)
  end

  it 'returns text' do
    expect(generate).to eq(result_text)
  end
end
