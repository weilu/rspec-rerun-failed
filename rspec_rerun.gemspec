# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_rerun'

Gem::Specification.new do |gem|
  gem.name          = "rspec-rerun-failed"
  gem.version       = RspecRerun::VERSION
  gem.authors       = ["Wei Lu"]
  gem.email         = ["luwei.here@gmail.com"]
  gem.description   = %q{Rerun the previously failed specs}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/weilu/rspec-rerun"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rspec"
end

