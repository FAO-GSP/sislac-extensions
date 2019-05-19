$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require 'sislac/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'sislac'
  s.version     = Sislac::VERSION
  s.authors     = ['Mauricio Pasquier Juan']
  s.email       = ['<mauricio@pasquierjuan.com.ar>']
  s.homepage    = 'https://github.com/FAO-GSP/SISLAC'
  s.summary     = 'Customization of SiSINTA for SiSLAC'
  s.description = 'Customization of SiSINTA for SiSLAC as an engine.'
  s.license     = 'AGPL'

  s.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.2.1'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'i18n-tasks'
end
