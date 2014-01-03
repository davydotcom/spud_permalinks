$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spud_permalinks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spud_permalinks"
  s.version     = Spud::Permalinks::VERSION
  s.authors     = ["David Estes"]
  s.email       = ["destes@redwindsw.com"]
  s.homepage    = "http://www.github.com/davydotcom/spud_permalinks"
  s.summary     = "Dependency gem for spud blog and spud cms for maintaining historical permalinks"
  s.description = "This gem creates a polymorphic attachable model that can be used to store historical information on page urls for 301 redirecting."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.2"

  s.add_development_dependency 'mysql2', '0.3.14'
  s.add_development_dependency 'rspec', '2.14.0'
  s.add_development_dependency 'rspec-rails', '2.14.0'
  s.add_development_dependency 'shoulda', '~> 3.0.1'
  s.add_development_dependency 'factory_girl', '~> 3.0'
  s.add_development_dependency 'database_cleaner', '1.0.0.RC1'
  s.add_development_dependency 'mocha', '0.14.0'
  s.add_development_dependency 'simplecov', '~> 0.6.4'

end
