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

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"
  
end
