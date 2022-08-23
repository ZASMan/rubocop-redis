# frozen_string_literal: true

require_relative "lib/rubocop/redis-rb/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-redis-rb"
  spec.version = Rubocop::RedisRb::VERSION
  spec.authors = ["9sako6"]
  spec.email = ["31821663+9sako6@users.noreply.github.com"]

  spec.summary = "An extension of RuboCop for redis/redis-rb gem."
  spec.description = "An extension of RuboCop for redis/redis-rb gem."
  spec.homepage = "https://github.com/9sako6/rubocop-redis-rb"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/9sako6/rubocop-redis-rb.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/9sako6/rubocop-redis-rb"
  spec.metadata["changelog_uri"] = "https://github.com/9sako6/rubocop-redis-rb"

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
