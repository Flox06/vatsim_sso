# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vatsim_sso/version'

Gem::Specification.new do |spec|
  spec.name          = "vatsim_sso"
  spec.version       = VatsimSso::VERSION
  spec.authors       = ["Florian Rimoli"]
  spec.email         = ["florian.rimoli@vatfrance.org"]
  spec.summary       = "A simple gem to help you consuming VATSIM SSO"
  spec.description   = "A simple gem to help you consuming VATSIM SSO"
  spec.homepage      = "http://www.vatfrance.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_dependency "oauth", "= 0.4.7"
  spec.add_dependency "json", "~> 1.7"
end
