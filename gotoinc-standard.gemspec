# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gotoinc/standard/version'

Gem::Specification.new do |spec|
  spec.name = 'gotoinc-standard'
  spec.version = Gotoinc::Standard::Version::STRING
  spec.platform = Gem::Platform::RUBY
  spec.authors = ['Ihor Boiko']
  spec.email = ['payk.ace@gmail.com']

  spec.summary = 'Standard RuboCop configuration for GoToInc'
  spec.homepage = 'https://github.com/payk24/gotoinc-standard'
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'standard', '~> 0.1.5'
  spec.add_dependency 'rubocop-rails', '~> 2.3.2'
  spec.add_dependency 'rubocop-rspec', '~> 1.35.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.59'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
end
