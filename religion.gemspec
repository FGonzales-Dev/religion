lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'religion/version'

Gem::Specification.new do |gem|
  gem.name          = "religion"
  gem.version       = Religion::VERSION
  gem.authors       = ["Francis Mamaril Gonzales"]
  gem.email         = ["francisgonzales.developer@gmail.com"]
  gem.description   = %q{Provides listing of religions that you may need in your ruby applications.}
  gem.summary       = %q{List of Religion}
  gem.homepage      = "https://github.com/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 1.9.2"

  gem.add_development_dependency "rake"
  gem.add_development_dependency 'rspec', '~> 2.13', '>= 2.13.0'
  
end
