# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adapter/moneta/version'

Gem::Specification.new do |spec|
  spec.name          = "adapter-moneta"
  spec.version       = Adapter::Moneta::VERSION
  spec.authors       = ["Luke Chadwick"]
  spec.email         = ["me@vertis.io"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  
  spec.add_dependency 'adapter', '~> 0.7.0'
  spec.add_dependency 'moneta', '~> 0.7.20'
end
