# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.6.0'

  spec.name     = 'puma_dynamic_tags'
  spec.version  = '0.1.0'
  spec.authors  = ['Rustam Ibragimov']
  spec.email    = ['exfivedaiver@gmail.com']
  spec.homepage = 'https://github.com/0exp/puma_dynamic_tags'
  spec.license  = 'MIT'

  spec.summary = <<~GEM_SUMMARY
    puma_dynamic_tags - allows you to use a dynamic tag option calculated by a proc.
  GEM_SUMMARY
  spec.description = <<~GEM_DESCRIPTION
    puma_dynamic_tags - allows to use a dynamic tag option calculated by proc.
  GEM_DESCRIPTION

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/0exp/puma_dynamic_tags'
  spec.metadata['changelog_uri']   = 'https://github.com/0exp/puma_dynamic_tags/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'armitage-rubocop', '>= 1.26.1.1'
  spec.add_development_dependency 'bundler',          '~> 2.3'
  spec.add_development_dependency 'rake',             '~> 13.0'
  spec.add_development_dependency 'rspec',            '~> 3.11'
  spec.add_development_dependency 'simplecov',        '~> 0.21'
  spec.add_development_dependency 'pry',              '~> 0.14'
end
