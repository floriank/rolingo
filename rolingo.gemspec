require_relative 'lib/rolingo/version'

Gem::Specification.new do |spec|
  spec.name          = "rolingo"
  spec.version       = Rolingo::VERSION
  spec.authors       = ["Florian Kraft"]
  spec.email         = ["schnuffifkgmail.com"]

  spec.summary       = %q{A JRuby wrapper for Apache Olingo OData}
  spec.description   = %q{A small wrapper library used to wrap the integration for the OData client provided by the Apache OLingo project}
  spec.homepage      = "https://github.com/floriank/rolingo"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/floriank/rolingo/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  # adds the jars to the requirements
  spec.files += Dir['lib/**/*.jar']

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Java specific dependencies
  spec.platform = 'java'
  spec.requirements << 'jar org.apache.olingo, odata-client-api, 4.7.1'
  spec.requirements << 'jar org.apache.olingo, odata-client-core, 4.7.1'
  spec.requirements << 'jar commons-logging, commons-logging, 1.2'
  spec.requirements << 'jar org.slf4j, slf4j-simple, 1.7.7'

  spec.add_development_dependency "pry"
end
