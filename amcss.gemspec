# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'amcss/version'

Gem::Specification.new do |spec|
  spec.name          = "amcss"
  spec.version       = Amcss::VERSION
  spec.authors       = ["Silvano Stralla"]
  spec.email         = ["silvano.stralla@sistrall.it"]
  spec.summary       = %q{Attribute Modules for CSS (AMCSS) in Ruby}
  spec.description   = %q{"Attribute Modules (AM) is a technique for using HTML attributes and their values rather than classes for styling elements."}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
end
