# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moroes/version'

Gem::Specification.new do |spec|
  spec.name          = "moroes"
  spec.version       = Moroes::VERSION
  spec.authors       = ["Sergey Kurochkin"]
  spec.email         = ["sichirc@gmail.com"]

  spec.summary       = %q{Gem for twitter analyze authomation.}
  spec.description   = %q{Gem for twitter analyze authomation.}
  spec.homepage      = "https://github.com/sichacvah/moroes"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/sichacvah/moroes"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'slack-ruby-bot'
  spec.add_dependency 'celluloid-io'
  spec.add_dependency 'twitter', '~> 5.11.0' 

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'puma'
end
