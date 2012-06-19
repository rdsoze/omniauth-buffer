# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors = ["Raison"]
  gem.email = ["raisondsouza@gmail.com"]
  gem.description = "test buffer omniauth"
  gem.summary = "test buffer omniauth"
  gem.homepage = ""

  gem.files = `git ls-files`.split($\)
  gem.executables = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.name = "omniauth-buffer"
  gem.require_paths = ["lib"]
  gem.version = '0.0.1'
  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.0.2'
end