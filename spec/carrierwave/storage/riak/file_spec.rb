require 'spec_helper'

describe CarrierWave::Storage::Riak::File do
  let(:uploader) { double('uploader') }
  let(:base) { double('base') }
  let(:bucket) { 'bucket_name' }
  let(:key) { 'the_key.txt' }

  before do
    allow(uploader).to receive('key=')
  end

  subject {
    CarrierWave::Storage::Riak::File.new(uploader, base, bucket, key)
  }

  it { expect(subject.path).to eq '/bucket_name/the_key.txt' }
end
