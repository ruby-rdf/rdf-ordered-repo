#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'rdf-ordered-repo'
  gem.homepage           = 'https://github.com/ruby-rdf/rdf-ordered-repo'
  gem.license            = 'Unlicense'
  gem.summary            = 'An order-preserving repository for RDF.rb.'
  gem.description        = %(An in-memory implementation of RDF::Repository using native Ruby Hashes having insert-order preserving properties.)

  gem.authors            = ['Gregg Kellogg']
  gem.email              = 'public-rdf-ruby@w3.org'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS README.md UNLICENSE VERSION etc/doap.ttl) + Dir.glob('lib/**/*.rb')
  gem.require_paths      = %w(lib)

  gem.required_ruby_version      = '>= 2.4'
  gem.requirements               = []
  gem.add_runtime_dependency     'rdf',         '~> 3.1'
  gem.add_development_dependency 'rdf-spec',    '~> 3.1'
  gem.add_development_dependency 'rspec',       '~> 3.9'
  gem.add_development_dependency 'yard',        '~> 0.9.20'

  gem.post_install_message       = nil
end
