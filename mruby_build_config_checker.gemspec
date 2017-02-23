# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mruby_build_config_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "mruby_build_config_checker"
  spec.version       = MrubyBuildConfigChecker::VERSION
  spec.authors       = ["ksss"]
  spec.email         = ["co000ri@gmail.com"]

  spec.summary       = %q{mruby's build_config.rb update checker.}
  spec.description   = %q{mruby's build_config.rb update checker.}
  spec.homepage      = "https://github.com/ksss/mruby_build_config_checker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "octokit"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
