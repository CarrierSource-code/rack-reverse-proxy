lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rack_reverse_proxy/version"

Gem::Specification.new do |spec|
  spec.name          = "rack-reverse-proxy"
  spec.version       = RackReverseProxy::VERSION

  spec.authors = [
    "Jon Swope",
    "Ian Ehlert",
    "Roman Ernst",
    "Oleksii Fedorov"
  ]

  spec.email = %w[
    jaswope@gmail.com
    ehlertij@gmail.com
    rernst@farbenmeer.net
    waterlink000@gmail.com
  ]

  spec.required_ruby_version = Gem::Requirement.new(">= 4.0.0")

  spec.summary       = "A Simple Reverse Proxy for Rack"
  spec.description   = <<~DESC
    A Rack based reverse proxy for basic needs.
    Useful for testing or in cases where webserver configuration is unavailable.
  DESC

  spec.homepage      = "https://github.com/waterlink/rack-reverse-proxy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rack", ">= 1.0.0"
  spec.add_dependency "rack-proxy"

  spec.metadata["rubygems_mfa_required"] = "true"
end
