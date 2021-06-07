# -*- encoding: utf-8 -*-
# stub: hanami-controller 1.3.3 ruby lib

Gem::Specification.new do |s|
  s.name = "hanami-controller".freeze
  s.version = "1.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Luca Guidi".freeze]
  s.date = "2020-01-14"
  s.description = "Complete, fast and testable actions for Rack".freeze
  s.email = ["me@lucaguidi.com".freeze]
  s.homepage = "http://hanamirb.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Complete, fast and testable actions for Rack and Hanami".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rack>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<hanami-utils>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.6", "< 3"])
    s.add_development_dependency(%q<rack-test>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
  else
    s.add_dependency(%q<rack>.freeze, ["~> 2.0"])
    s.add_dependency(%q<hanami-utils>.freeze, ["~> 1.3"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.6", "< 3"])
    s.add_dependency(%q<rack-test>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
  end
end
