# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'identifier-uuid'
  s.summary = 'UUID identifier generator'
  s.version = '0.1.0'
  s.authors = ['']
  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.2'

  s.add_runtime_dependency 'naught', '1.0.0'
end
