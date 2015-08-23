# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/langenv/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-langenv"
  spec.version       = Itamae::Plugin::Recipe::Langenv::VERSION
  spec.authors       = ["MATSUMOTO, Katsuyoshi"]
  spec.email         = ["github@katsyoshi.org"]

  spec.summary       = %q{Itamae plugin recipe langenv: rbenv, plenv, and pyenv}
  spec.description   = %q{Itamae plugin recipe langenv: rbenv, plenv, and pyenv}
  spec.license       = "MIT"
  spec.homepage      = "https://github.com/katsyoshi/itamae-plugin-recipe-langenv"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae", "~> 1.2"
  spec.add_dependency "itamae-plugin-recipe-rbenv"
  spec.add_dependency "itamae-plugin-recipe-plenv"
  spec.add_dependency "itamae-plugin-recipe-pyenv"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
