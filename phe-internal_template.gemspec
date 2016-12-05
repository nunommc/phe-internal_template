# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phe/internal_template/version'

Gem::Specification.new do |spec|
  spec.name          = "phe-internal_template"
  spec.version       = Phe::InternalTemplate::VERSION
  spec.authors       = ["Nuno Costa"]
  spec.email         = ["nuno.mmc@gmail.com"]

  spec.summary       = %q{PHE internal template}
  spec.description   = %q{Template for PHE internal services}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ["lib"]

  spec.add_dependency 'rails', '~> 4'
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
