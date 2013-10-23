$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "glass_sdk/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "glass_sdk"
  s.version     = GlassSdk::VERSION
  s.authors     = ["mj"]
  s.email       = ["tywf91@gmail.com"]
  s.homepage    = "https://github.com/mjason/google_sdk"
  s.summary     = "Simple Development for Google Glass"
  s.description = "Google OAuth2.0 and Google Glass API"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
