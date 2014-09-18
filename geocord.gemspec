# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geocord/version'

Gem::Specification.new do |spec|
  spec.name          = "geocord"
  spec.version       = Geocord::VERSION
  spec.authors       = ["Sidnei Pacheco"]
  spec.email         = ["sidneip.junior@gmail.com"]
  spec.summary       = %q{Get Geo Cordinate for address}
  spec.description   = %q{Get Cordinate for address}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "faraday"
end
