# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-google-apps/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-google-apps"
  s.version     = Omniauth::GoogleApps::VERSION
  s.authors     = ["Dingding Ye"]
  s.email       = ["yedingding@gmail.com"]
  s.homepage    = "https://github.com/sishen/omniauth-google-apps"
  s.summary     = %q{OmniAuth strategy for Google Apps.}
  s.description = %q{OmniAuth strategy for Google Apps.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency 'omniauth', '~> 1.0'
  s.add_dependency 'omniauth-openid', '~> 1.0'
  s.add_dependency 'ruby-openid-apps-discovery', '~> 1.2.0'
  s.add_dependency 'ruby-openid', "~> 2.3.0"
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
