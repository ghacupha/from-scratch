# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'from/scratch/version'

Gem::Specification.new do |spec|
  spec.name          = "from-scratch"
  spec.version       = FromScratch::VERSION
  spec.authors       = ["Andrew Shaydurov"]
  spec.email         = ["gearhead@it-primorye.ru"]

  spec.summary       = "Your last command to bootstrap the whole Rails app"
  spec.description   = "Makes all the stuff usually you or your DevOps does before first deploy"
  spec.homepage      = "https://github.com/sandrew/from-scratch"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = %w(scratchify)
  spec.require_paths = %w(lib)

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'pry'

  spec.add_dependency 'sshkit', '>= 1.7.1'
  spec.add_dependency 'colorize'
  spec.add_dependency 'activesupport', '>= 3.2.1'
  spec.add_dependency 'knife-solo'
  spec.add_dependency 'knife-solo_data_bag'
  spec.add_dependency 'chef'
  spec.add_dependency 'berkshelf'


  spec.required_ruby_version = '>= 1.9.3'
end