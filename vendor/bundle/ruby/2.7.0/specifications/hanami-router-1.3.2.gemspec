# -*- encoding: utf-8 -*-
# stub: hanami-router 1.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "hanami-router".freeze
  s.version = "1.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Luca Guidi".freeze]
  s.date = "2020-01-13"
  s.description = "Rack compatible HTTP router for Ruby".freeze
  s.email = ["me@lucaguidi.com".freeze]
  s.homepage = "http://hanamirb.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Rack compatible HTTP router for Ruby and Hanami".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rack>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<http_router>.freeze, ["= 0.11.2"])
    s.add_runtime_dependency(%q<hanami-utils>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.6", "< 3"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13"])
    s.add_development_dependency(%q<rack-test>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
  else
    s.add_dependency(%q<rack>.freeze, ["~> 2.0"])
    s.add_dependency(%q<http_router>.freeze, ["= 0.11.2"])
    s.add_dependency(%q<hanami-utils>.freeze, ["~> 1.3"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.6", "< 3"])
    s.add_dependency(%q<rake>.freeze, ["~> 13"])
    s.add_dependency(%q<rack-test>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
  end
end
