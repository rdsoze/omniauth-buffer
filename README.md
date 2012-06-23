OmniAuth Buffer
================
Work in Progress

This gem is an OmniAuth Strategy for the [Buffer API](http://bufferapp.com/developers/api) which uses OAuth 2.0

Usage
-----

Add the strategy to your `Gemfile` alongside OmniAuth:

```ruby
gem 'omniauth'
gem 'omniauth-buffer'
```

Then integrate the strategy into your middleware:

```ruby
use OmniAuth::Builder do
  provider :buffer, ENV['BUFFER_KEY'], ENV['BUFFER_SECRET']
end
```

In Rails, you'll want to add to the middleware stack:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :buffer, ENV['BUFFER_KEY'], ENV['BUFFER_SECRET']
end
```

For additional information, refer to the [OmniAuth wiki](https://github.com/intridea/omniauth/wiki).
