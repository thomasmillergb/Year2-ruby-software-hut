$:.push File.expand_path("../lib", __FILE__)

require "fullcalendar_engine/version"

Gem::Specification.new do |s|
  s.name        = "fullcalendar_engine"
  s.version     = FullcalendarEngine::VERSION
  s.license     = 'MIT'
  s.authors     = ["Mohit Bansal", "Aditya Kapoor", "Shubham Gupta"]
  s.email       = ["info@vinsol.com"]
  s.homepage    = "http://vinsol.com"
  s.summary     = "Engine Implementation of jQuery Full Calendar"
  s.description = "Engine Implementation of jQuery Full Calendar"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files  = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.0"
end
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/version'

Gem::Specification.new do |spec|
  spec.add_dependency 'hashie', ['>= 1.2', '< 3']
  spec.add_dependency 'rack', '~> 1.0'
  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.authors       = ['Michael Bleigh', 'Erik Michaels-Ober']
  spec.description   = %q{A generalized Rack framework for multiple-provider authentication.}
  spec.email         = ['michael@intridea.com', 'sferik@gmail.com']
  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.homepage      = 'http://github.com/intridea/omniauth'
  spec.licenses      = ['MIT']
  spec.name          = 'omniauth'
  spec.require_paths = ['lib']
  spec.required_rubygems_version = '>= 1.3.5'
  spec.summary       = spec.description
  spec.test_files    = spec.files.grep(/^spec\//)
  spec.version       = OmniAuth::VERSION
end
