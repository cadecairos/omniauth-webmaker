# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth/webmaker/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Christopher De Cairos"]
  gem.email         = ["cade@mozillafoundation.org"]
  gem.description   = %q{An OmniAuth strategy for implementing webmaker login}
  gem.summary       = %q{An OmniAuth strategy for implementing webmaker-login}
  gem.homepage      = "https://github.com/cadecairos/discourse-webmaker-persona"

  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-webmaker"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Webmaker::VERSION

  gem.add_dependency "omniauth", "~> 1.0"
  gem.add_dependency "faraday"
  gem.add_dependency "multi_json"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~> 2.7"
  gem.add_development_dependency "rack-test"
end
