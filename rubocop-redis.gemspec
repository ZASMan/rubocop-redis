# frozen_string_literal: true

require_relative "lib/rubocop/redis/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-redis"
  spec.version = Rubocop::Redis::VERSION
  spec.authors = ["9sako6"]
  spec.email = ["31821663+9sako6@users.noreply.github.com"]

  spec.summary = "An extension of RuboCop for redis/redis gem."
  spec.description = "An extension of RuboCop for redis/redis gem."
  spec.homepage = "https://github.com/9sako6/rubocop-redis"
  spec.license = 'MIT'
  spec.required_ruby_version = ">= 2.5.7"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/9sako6/rubocop-redis"
  spec.metadata["changelog_uri"] = "https://github.com/9sako6/rubocop-redis/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
