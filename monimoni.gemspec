$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "monimoni/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "monimoni"
  s.version     = Monimoni::VERSION
  s.authors     = ["Mitsuhiro Shibuya"]
  s.email       = ["mit.shibuya@gmail.com"]
  s.homepage    = "https://github.com/greenbell/monimoni"
  s.summary     = "Alive monitoring endpoint"
  s.description = "Simple alive monitoring endpoint, implemented as Rails mountable engine."
  s.license       = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 3.1"

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency "sqlite3"
end
