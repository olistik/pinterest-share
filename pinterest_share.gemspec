# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pinterest_share/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Maurizio De Magnis"]
  gem.email         = ["maurizio.demagnis@gmail.com"]
  gem.description   = %q{Sharing url for Pinterest}
  gem.summary       = %q{It creates sharing url given the necessary attributes.}
  gem.homepage      = ""

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'growl'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pinterest-share"
  gem.require_paths = ["lib"]
  gem.version       = PinterestShare::VERSION
end
