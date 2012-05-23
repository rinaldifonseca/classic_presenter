# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "classic_presenter/version"

Gem::Specification.new do |s|
  s.name        = "classic_presenter"
  s.version     = ClassicPresenter::VERSION
  s.authors     = ["Rinaldi Fonseca"]
  s.email       = ["rinaldifonseca@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A simple Presenter Pattern for Rails Applications}
  s.description = %q{A simple Presenter Pattern for Rails Applications}

  s.rubyforge_project = "classic_presenter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
end
