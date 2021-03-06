# -*- encoding: utf-8 -*-

$:.push File.expand_path('../lib', __FILE__)
require 'ruport/version'

Gem::Specification.new do |s|
  s.name = %q{ruport}

  s.homepage = %q{http://github.com/ruport/ruport}

  s.version = Ruport::VERSION

  s.authors = ["Gregory Brown", "Mike Milner", "Andrew France"]

  s.summary = %q{A generalized Ruby report generation and templating engine.}

  s.description = %q{Ruby Reports is a software library that aims to make the task of reporting
      less tedious and painful. It provides tools for data acquisition,
      database interaction, formatting, and parsing/munging.
}

  s.email = %q{gregory.t.brown@gmail.com}

  s.files = `/bin/bash -c 'git ls-files -- {lib,examples,test,util}/*'`.split("\n") + %w[AUTHORS COPYING HACKING LICENSE README.rdoc Rakefile]

  s.test_files = `/bin/bash -c 'git ls-files -- {examples,test}/*'`.split("\n")

  s.extra_rdoc_files = %w[LICENSE README.rdoc]

  s.require_paths = %w[lib]

  s.rdoc_options = ['--title', 'Ruport Documentation', '--main', 'README.rdoc', '-q']

  if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    s.add_runtime_dependency(%q<pdf-writer>, ["= 1.1.8"])
    s.add_runtime_dependency(%q<prawn>, [">= 0.12.0", "< 2.1.0"]) # tested on 2.0.x, but not 2.1.x
  else
    s.add_dependency(%q<pdf-writer>, ["= 1.1.8"])
    s.add_runtime_dependency(%q<prawn>, ["= 0.12.0"])
  end

  s.add_development_dependency(%q<rake>)
end
