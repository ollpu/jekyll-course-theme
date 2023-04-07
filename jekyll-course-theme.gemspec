# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-course-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Roope Salmi"]
  spec.email         = ["rpsalmi@gmail.com"]

  spec.summary       = "Jekyll theme for use in some University of Helsinki courses."
  spec.homepage      = "https://github.com/ollpu/jekyll-course-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9"

  spec.add_development_dependency "bundler", "~> 2.4"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "webrick", "~> 1.8"
  spec.add_development_dependency "kramdown-parser-gfm", "~> 1.1"
end
