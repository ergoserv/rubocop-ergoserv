lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop/ergoserv/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-ergoserv'
  spec.version       = Rubocop::Ergoserv::VERSION
  spec.authors       = ['Dmitry Babenko', 'ErgoServ']
  spec.email         = ['dmitry@ergoserv.com', 'hello@ergoserv.com']

  spec.summary       = 'ErgoServ RuboCop Config'
  spec.description   = 'ErgoServ RuboCop Config'
  spec.homepage      = 'http://github.com/ergoserv/rubocop-ergoserv/'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = spec.homepage
    spec.metadata['changelog_uri'] = spec.homepage
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-shell-expectations'

  spec.add_runtime_dependency 'rubocop', '0.81'
  spec.add_runtime_dependency 'rubocop-performance', '~> 1.5.2'
  spec.add_runtime_dependency 'rubocop-rails', '~> 2.4.2'
  spec.add_runtime_dependency 'rubocop-rake', '~> 0.5.1'
  spec.add_runtime_dependency 'rubocop-rspec', '~> 1.38.1'
end
