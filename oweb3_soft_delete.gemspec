$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "oweb3_soft_delete/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "oweb3_soft_delete"
  s.version     = Oweb3SoftDelete::VERSION
  s.authors     = ["Denis Fabien"]
  s.email       = ["denis.fabien.ca@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of Oweb3SoftDelete."
  s.description = "Description of Oweb3SoftDelete."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"
end
