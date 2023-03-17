# frozen_string_literal: true

require File.expand_path('lib/foreman_netbox/version', __dir__)

Gem::Specification.new do |s|
  s.name        = 'foreman_netbox'
  s.version     = ForemanNetbox::VERSION
  s.license     = 'GPL-3.0'
  s.authors     = ['Kenneth Blossom']
  s.email       = ['kenneth@mscrnt.com']
  s.homepage    = 'https://github.com/mscrnt/foreman_netbox'
  s.summary     = 'Adds integration with NetBox'

  s.files = Dir['{app,config,db,lib,locale}/**/*'] + ['LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'dry-configurable', '>= 0.13', '< 0.17'
  s.add_dependency 'dry-container', '>= 0.7', '< 0.12'
  s.add_dependency 'dry-core', '>= 0.6', '< 0.9'
  s.add_dependency 'dry-inflector', '0.3.0'
  s.add_dependency 'dry-schema', '>= 1.6', '< 1.12'
  s.add_dependency 'dry-validation', '>= 1.5.2', '< 1.9.0'
  s.add_dependency 'interactor', '~> 3.1.1'
  s.add_dependency 'netbox-client-ruby', '>= 2.1', '< 3.0'

  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'rubocop', '~> 1.45.1'
  s.add_development_dependency 'rubocop-rails', '~> 2.9.1'

  # Add the Foreman and Katello dependencies
  s.add_dependency 'foreman', '>= 3.5', '< 4.0'
  s.add_dependency 'katello', '>= 4.7', '< 5.0'
end
