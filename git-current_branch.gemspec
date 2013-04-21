# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git/current_branch/version'

Gem::Specification.new do |spec|
  spec.name          = "git-current_branch"
  spec.version       = Git::CurrentBranch::VERSION
  spec.authors       = ["sanemat"]
  spec.email         = ["o.gata.ken@gmail.com"]
  spec.description   = %q{Show git current branch, check current branch.}
  spec.summary       = %q{Show git current branch, check current branch.}
  spec.homepage      = "https://github.com/sanemat/git-current_branch"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'

  spec.add_dependency 'thor'
  spec.add_dependency 'rugged'
end
