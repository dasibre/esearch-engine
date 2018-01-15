$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "search_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "search_engine"
  s.version     = SearchEngine::VERSION
  s.authors     = ["James Naadjie"]
  s.email       = ["james.naadjie@gmail.com"]
  s.homepage    = ""
  s.summary     = "SearchEngine"
  s.description = "Provide search capabilities to application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency "elasticsearch"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
