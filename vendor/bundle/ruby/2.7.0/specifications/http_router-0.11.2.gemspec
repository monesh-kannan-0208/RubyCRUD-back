# -*- encoding: utf-8 -*-
# stub: http_router 0.11.2 ruby lib

Gem::Specification.new do |s|
  s.name = "http_router".freeze
  s.version = "0.11.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Joshua Hull".freeze]
  s.date = "2015-07-10"
  s.description = "This library allows you to recognize and build URLs in a Rack application.".freeze
  s.email = "joshbuddy@gmail.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/joshbuddy/http_router".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "A kick-ass HTTP router for use in Rack".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rack>.freeze, [">= 1.0.0"])
    s.add_runtime_dependency(%q<url_mount>.freeze, ["~> 0.2.1"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 2.0.0"])
    s.add_development_dependency(%q<code_stats>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 0.8.7"])
    s.add_development_dependency(%q<rbench>.freeze, [">= 0"])
    s.add_development_dependency(%q<json>.freeze, [">= 0"])
    s.add_development_dependency(%q<phocus>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<thin>.freeze, ["= 1.2.8"])
  else
    s.add_dependency(%q<rack>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<url_mount>.freeze, ["~> 0.2.1"])
    s.add_dependency(%q<minitest>.freeze, ["~> 2.0.0"])
    s.add_dependency(%q<code_stats>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 0.8.7"])
    s.add_dependency(%q<rbench>.freeze, [">= 0"])
    s.add_dependency(%q<json>.freeze, [">= 0"])
    s.add_dependency(%q<phocus>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<thin>.freeze, ["= 1.2.8"])
  end
end
