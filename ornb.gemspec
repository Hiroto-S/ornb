
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ornb/version"

Gem::Specification.new do |spec|
  spec.name          = "ornb"
  spec.version       = Ornb::VERSION
  spec.authors       = ["Shigeto R. Nishitani"]
  spec.email         = ["shigeto_nishitani@me.com"]

  spec.summary       = %q{org and ruby based note book}
  spec.description   = %q{org and ruby based note book}
  spec.homepage      = "http://hogehoge"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "yard", "~> 0.9.11"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "colorize"
end
