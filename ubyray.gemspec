# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ubyray/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brian Kelly"]
  gem.email         = ["polymonic@gmail.com"]
  gem.description   = %q{This is a project for practicing Ruby programming, using RSpec, Travis CI and related tools.}
  gem.summary       = %q{Pig Latin translator for Ruby}
  gem.homepage      = "https://github.com/spilth/ubyray"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ubyray"
  gem.require_paths = ["lib"]
  gem.version       = Ubyray::VERSION
  
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "yard"
  gem.add_development_dependency "redcarpet"
  
end
