# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-buffer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = "omniauth-buffer"
  gem.version = OmniAuth::Buffer::VERSION
  gem.authors = ["Raison"]
  gem.email = ["raisondsouza@gmail.com"]
  gem.description = "Omniauth strategy for Buffer"
  gem.summary = "Omniauth strategy for Buffer"
  gem.homepage = "https://github.com/rdsoze/omniauth-buffer.git"

  gem.files = `git ls-files`.split($\)
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.executables = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency 'multi_json', '~> 1.3'
  gem.add_development_dependency 'rspec', '~> 2.10'
  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.0.2'
end