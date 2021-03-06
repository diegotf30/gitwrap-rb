# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitwrap/version'

Gem::Specification.new do |spec|
  spec.name          = "gitwrap"
  spec.version       = Gitwrap::VERSION
  spec.authors       = ["oscarmarcelo95"]
  spec.email         = ["oscarmarcelo95@gmail.com"]

  spec.summary       = %q{Client that connects to Github's API.}
  spec.description   = %q{Gitwrap is amazing to work with information the Github API provides.}
  spec.homepage      = "https://github.com/oelizondo/gitwrap"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "httparty", "~> 0.13.5"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
