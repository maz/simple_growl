# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_growl/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_growl"
  spec.version       = SimpleGrowl::VERSION
  spec.authors       = ["Marc Rosen"]
  spec.email         = ["ma.mazmaz@gmail.com"]
  spec.description   = %q{SimpleGrowl sends notifications to Growl on Macs.}
  spec.summary       = %q{SimpleGrowl is a simple ruby module, with no esoteric dependencies, designed to provide a very simplistic Growl calling interface.}
  spec.homepage      = "https://github.com/maz/simple_growl"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
