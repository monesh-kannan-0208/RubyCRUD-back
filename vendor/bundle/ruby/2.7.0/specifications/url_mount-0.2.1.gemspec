# -*- encoding: utf-8 -*-
# stub: url_mount 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "url_mount".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Neighman".freeze]
  s.date = "2010-06-07"
  s.description = "Glue to allow mounted rack applications to know where they're mounted".freeze
  s.email = "has.sox@gmail.com".freeze
  s.homepage = "http://github.com/hassox/url_mount".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Universal mounting points for rack applications".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rack>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rack>.freeze, [">= 0"])
  end
end
