# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "recursive-struct"
  spec.version       = "1.0.0"
  spec.authors       = ["Charles Chamberlain"]
  spec.email         = ["charles@charlesetc.com"]
  spec.description   = %q{Recursive-Struct allows for inifinite Open Struct chains.}
  spec.summary       = %q{Perfect Open Structs.}
  spec.homepage      = "https://github.com/Charlesetc/recursive-struct"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
