$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_nav/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_nav"
  s.version     = SimpleNav::VERSION
  s.authors     = ["Gary Haran"]
  s.email       = ["gary.haran@gmail.com"]
  s.homepage    = "https://github.com/garyharan/simple_nav"
  s.summary     = "Provides a simple navigation helper for learning purpose."
  s.description = s.summary

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.3"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
