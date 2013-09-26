# -*- encoding: utf-8 -*-
require File.dirname(__FILE__) + '/lib/omniavatar-meetup/version'

Gem::Specification.new do |gem|
  gem.add_development_dependency 'rspec', '~> 2.12'

  gem.name = 'omniauth-identity'
  gem.version = OmniAvatar::Meetup::VERSION
  gem.description = %q{Meetup.com avatar provider for omniavatar.}
  gem.summary = gem.description
  gem.email = ['craig@enspiral.com']
  gem.homepage = 'http://github.com/enspiral/omniavatar-meetup'
  gem.authors = ['Craig Ambrose']
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if gem.respond_to? :required_rubygems_version=
end