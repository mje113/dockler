# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dockler/version'

Gem::Specification.new do |spec|
  spec.name          = 'dockler'
  spec.version       = Dockler::VERSION
  spec.authors       = ['Mike Evans']
  spec.email         = ['mike@urlgonomics.com']
  spec.description   = %q{Write a gem description}
  spec.summary       = %q{Write a gem summary}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.bindir        = 'bin'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'bundler', '~> 1.3'
  spec.add_runtime_dependency 'rake'
end
