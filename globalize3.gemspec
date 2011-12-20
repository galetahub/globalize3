# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "globalize3/version"

Gem::Specification.new do |s|
  s.name = "galetahub-globalize3"
  s.version = Globalize3::VERSION.dup
  s.platform = Gem::Platform::RUBY 
  s.summary = "Help you to translate your database"
  s.description = "Rails I18n: de-facto standard library for ActiveRecord 3 model/data translation"
  s.authors = ['Sven Fuchs', 'Joshua Harvey', 'Clemens Kofler', 'John-Paul Bader', "Pavlo Galeta", "Igor Galeta"]
  s.email = "galeta.igor@gmail.com"
  s.rubyforge_project = "galetahub-globalize3"
  s.homepage = "http://github.com/galetahub/simple-captcha"
  
  s.files = Dir["{lib}/**/*"] + ["Rakefile", "README.textile"]
  s.test_files = Dir["{test}/**/*"]
  s.extra_rdoc_files = ["README.textile"]
  s.require_paths = ["lib"]
  
  s.add_dependency 'activerecord', '>= 3.0.0'
  s.add_dependency 'activemodel', '>= 3.0.0'
  s.add_dependency 'paper_trail', '~> 2'

  s.add_development_dependency 'database_cleaner', '0.5.2'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'pathname_local'
  s.add_development_dependency 'test_declarative'
  s.add_development_dependency 'sqlite3-ruby'
end
