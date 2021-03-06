# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "artoo-gpio/version"

Gem::Specification.new do |s|
  s.name        = "artoo-gpio"
  s.version     = Artoo::Gpio::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ron Evans", "Adrian Zankich", "Rafael Magaña", "Edgar Silva"]
  s.email       = ["artoo@hybridgroup.com"]
  s.homepage    = "https://github.com/hybridgroup/artoo-gpio"
  s.summary     = %q{Artoo standard drivers for GPIO devices}
  s.description = %q{Artoo standard drivers for GPIO devices such as digital IO, analog IO, PWM IO, and servos}
  s.license     = 'Apache 2.0'

  s.rubyforge_project = "artoo-gpio"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'artoo', '>= 1.6.0'
  s.add_development_dependency 'minitest', '>= 5.0'
  s.add_development_dependency 'minitest-happy'
  s.add_development_dependency 'mocha', '>= 0.14.0'
end
