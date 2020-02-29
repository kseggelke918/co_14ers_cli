
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "co_14ers/version"

Gem::Specification.new do |spec|
  spec.name          = "co_14ers_cli"
  spec.version       = Co14ers::VERSION
  spec.authors       = ["'Katie Seggelke'"]
  spec.email         = ["'katie.seggelke@gmail.com'"]

  spec.summary       = %q{A comprehenive list of Colorado peaks with elevations greater than 14,000 feet.}
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
