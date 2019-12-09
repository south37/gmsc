require_relative 'lib/gmsc/version'

Gem::Specification.new do |spec|
  spec.name          = "gmsc"
  spec.version       = GMSC::VERSION
  spec.authors       = ["Nao Minami"]
  spec.email         = ["south37777@gmail.com"]

  spec.summary       = %q{Converts a gRPC metadata to a Hash which can be safely converted to JSON.}
  spec.description   = %q{Converts a gRPC metadata to a Hash which can be safely converted to JSON.}
  spec.homepage      = "https://github.com/south37/gmsc"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/south37/gmsc"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-doc"
end
