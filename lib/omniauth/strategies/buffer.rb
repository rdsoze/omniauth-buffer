require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Buffer < OmniAuth::Strategies::OAuth2
      option :name, 'buffer'
      option :client_options, {
        :site => 'http://api.buffer.com',
        :authorize_url => 'https://bufferapp.com/oauth2/authorize',
        :token_url => 'https://api.bufferapp.com/1/oauth2/token.json'
      }
      
      uid do
        request.params[options.uid_field.to_s]
      end

      info do
        options.fields.inject({}) do |hash, field|
          hash[field] = request.params[field]
          hash
        end
      end

    end
  end
end