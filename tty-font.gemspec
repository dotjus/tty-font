lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tty/font/version"

Gem::Specification.new do |spec|
  spec.name          = "tty-font"
  spec.version       = TTY::Font::VERSION
  spec.authors       = ["Piotr Murach"]
  spec.email         = ["me@piotrmurach.com"]
  spec.summary       = %q{Terminal fonts}
  spec.description   = %q{Write text in large stylized characters using a variety of terminal friendly fonts.}
  spec.homepage      = 'https://github.com/piotrmurach/tty-spinner'
  spec.license       = "MIT"

  spec.files         = Dir['{lib,spec,examples}/**/*.{rb,yml}']
  spec.files        += Dir['{bin,tasks}/*', 'tty-font.gemspec']
  spec.files        += Dir['{fonts/*.md}', 'README.md', 'CHANGELOG.md']
  spec.files        += Dir['LICENSE.txt', 'Rakefile']
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency "bundler", ">= 1.5"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake"
end
