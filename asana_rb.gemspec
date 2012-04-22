# -*- encoding: utf-8 -*-
require File.expand_path('../lib/asana_rb/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Zaiste λ"]
  gem.email         = ["oh@zaiste.net"]
  gem.description   = %q{Basic Ruby wrapper for Asana API}
  gem.summary       = %q{Basic Ruby wrapper for Asana API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "asana_rb"
  gem.require_paths = ["lib"]
  gem.version       = AsanaRb::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'webmock'

  gem.add_dependency "httparty"
  gem.add_dependency "json"
end
