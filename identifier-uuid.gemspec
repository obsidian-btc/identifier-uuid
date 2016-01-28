# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'identifier-uuid'
  s.version = '0.0.1.4'
  s.summary = 'UUID identifier generator with support for dependency configuration for real and null object implementations'
  s.description = ' '

  s.authors = ['Obsidian Software, Inc']
  s.email = 'opensource@obsidianexchange.com'
  s.homepage = 'https://github.com/obsidian-btc/identifier-uuid'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.2.3'

  s.add_runtime_dependency 'naught'

  s.add_development_dependency 'test_bench'
end
