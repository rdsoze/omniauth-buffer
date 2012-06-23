require 'spec_helper'

describe OmniAuth::Strategies::Buffer do
  subject do
    OmniAuth::Strategies::Buffer.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq("buffer")
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('http://api.buffer.com')
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://bufferapp.com/oauth2/authorize')
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq('https://api.bufferapp.com/1/oauth2/token.json')
    end
  end
end