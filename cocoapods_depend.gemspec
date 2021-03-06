# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods_depend.rb'

Gem::Specification.new do |s|
  s.name        = "cocoapods-depend"
  s.version     = CocoapodsDepend::VERSION
  s.authors     = ["Candyan"]
  s.email       = "liuyanhp@gmail.com"
  s.homepage    = "https://github.com/candyan/cocoapods-depend"
  s.summary     = %q{CocooPods plugin which allows to quickly manage your Podfile}
  s.license     = "MIT"

  s.files       = `git ls-files`.split($/)
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files  = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake", "~> 10.0"

  s.required_ruby_version = '>= 2.0.0'
end
