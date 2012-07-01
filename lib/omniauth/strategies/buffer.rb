require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Buffer < OmniAuth::Strategies::OAuth2
      option :name, 'buffer'
      option :client_options, {
        :site => 'http://api.buffer.com',
        :authorize_url => 'https://bufferapp.com/oauth2/authorize',
        :token_url => 'https://api.bufferapp.com/1/oauth2/token.json'
      } 
      
      uid { raw_info['id'] }

      info do
        {
          :referral_link => raw_info['referral_link']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        access_token.options[:mode] = :query
        access_token.options[:param_name] = :access_token
        @raw_info ||= MultiJson.load(access_token.get('https://api.bufferapp.com/1/user.json').body)
      end

    end
  end
end