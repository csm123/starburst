# frozen_string_literal: true

require_relative 'lib/starburst/version'

Gem::Specification.new do |spec|
  spec.name        = 'starburst'
  spec.version     = Starburst::VERSION
  spec.authors     = ['Corey Martin']
  spec.email       = ['coreym@gmail.com']

  spec.summary     = 'One-time messages to users in your app'
  spec.description = 'Show one-time messages to users in your Rails app'
  spec.homepage    = 'https://github.com/starburstgem/starburst'
  spec.license     = 'MIT'

  spec.metadata = {
    'bug_tracker_uri'   => "#{spec.homepage}/issues",
    'changelog_uri'     => "#{spec.homepage}/blob/master/CHANGELOG.md",
    'documentation_uri' => spec.homepage,
    'homepage_uri'      => spec.homepage,
    'source_code_uri'   => spec.homepage
  }

  spec.files = Dir['{app,config,db,lib}/**/*']

  spec.extra_rdoc_files = Dir['CHANGELOG.md', 'LICENSE.txt', 'README.md']
  spec.rdoc_options    += [
    '--title', 'Starburst',
    '--main', 'README.md',
    '--line-numbers',
    '--inline-source',
    '--quiet'
  ]

  spec.add_runtime_dependency 'rails', '>= 4.2.0', '< 6.2'

  spec.add_development_dependency 'appraisal', '~> 2'
  spec.add_development_dependency 'byebug', '>= 10.0.2', '< 12'
  spec.add_development_dependency 'capybara', '~> 3.1'
  spec.add_development_dependency 'database_cleaner-active_record', '~> 1.8'
  spec.add_development_dependency 'factory_bot_rails', '>= 4.11.1', '< 6'
  spec.add_development_dependency 'rspec-rails', '~> 4.0'
  spec.add_development_dependency 'selenium-webdriver', '>= 3.141.0', '< 4'
  spec.add_development_dependency 'shoulda-matchers', '~> 4.3'
  spec.add_development_dependency 'simplecov', '>= 0.17.1', '< 1'
  spec.add_development_dependency 'sprockets-rails', '~> 3.2'
  spec.add_development_dependency 'sqlite3', '~> 1.4'
  spec.add_development_dependency 'webdrivers', '~> 4.0'
end
