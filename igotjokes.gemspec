require_relative 'lib/igotjokes/version'

Gem::Specification.new do |spec|
  spec.name          = "igotjokes"
  spec.version       = Igotjokes::VERSION
  spec.authors       = ["Sylvance Mbaka"]
  spec.email         = ["kerandisylvance@gmail.com"]

  spec.summary       = %q{Get jokes from Jokes API}
  spec.description   = %q{Retrieve fun jokes for your side project or app.}
  spec.homepage      = "https://github.com/sylvance/igotjokes"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sylvance/igotjokes"
  spec.metadata["changelog_uri"] = "https://github.com/sylvance/igotjokes/blob/master/CHANGELOG.md"

  spec.add_dependency "activesupport"
  spec.add_dependency "faraday"
  spec.add_dependency "json"
  spec.add_dependency "logger"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
