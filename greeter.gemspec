# frozen_string_literal: true

require_relative "lib/greeter/version"

Gem::Specification.new do |spec|
  spec.name = "greeter"
  spec.version = Greeter::VERSION
  spec.authors = ["Gabi Jack"]
  spec.email = ["gabi@gabijack.com"]

  spec.summary = "Example of building a gem for a native C++ extension"
  spec.description = "Example of a gem for a native C++ extension"
  spec.homepage = "https://gabijack.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/gjack/greeter"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.extensions    = ['ext/greeter/extconf.rb']
  spec.files = [
    'ext/greeter/greeter_wrapped.cpp',
    'ext/greeter/greeter.h',
    'ext/greeter/greeter.cpp',
    'lib/greeter.rb',
    'lib/greeter/version.rb'
  ]
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rake-compiler", "~>1.2"
  spec.add_development_dependency "rice", "~> 4.3"
  

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
