require_relative 'lib/redis_storage_tokens/version'

Gem::Specification.new do |spec|

  spec.add_dependency 'redis'
  spec.add_runtime_dependency 'redis-namespace', '~> 1.5'

  spec.name          = "redis_storage_tokens"
  spec.version       = RedisStorageTokens::VERSION
  spec.authors       = ["esaud17"]
  spec.email         = ["esaud17@gmail.com"]

  spec.summary       = %q{Redis use to storage memory to tokens jwt privates}
  spec.description   = %q{simple repositoriy of tokens on redis db}
  spec.homepage      = "https://github.com/Esaud17/redis_storage_tokens"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Esaud17/redis_storage_tokens"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
