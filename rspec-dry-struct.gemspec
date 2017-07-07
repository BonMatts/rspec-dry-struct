# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/dry/struct/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-dry-struct'
  spec.version       = RSpec::Dry::Struct::VERSION
  spec.authors       = ['Sergey Kukunin']
  spec.email         = ['sergey.kukunin@gmail.com']

  spec.summary       = 'RSpec matcher for dry-struct gem'
  spec.description   = 'RSpec `have_attribute` matcher for dry-struct gem'
  spec.homepage      = 'https://github.com/matic-insurance/rspec-dry-struct'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rspec', '~> 3.6.0'
  spec.add_runtime_dependency 'dry-struct', '~> 0.3.1'

  spec.add_development_dependency 'bundler', '~> 1.15.1'
  spec.add_development_dependency 'rspec-its', '~> 1.2.0'
  spec.add_development_dependency 'rake', '~> 12.0.0'
end
