# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uikit-rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'uikit-rails'
  spec.version       = Uikit::VERSION
  spec.authors       = ['Trent Kocurek']
  spec.email         = ['t2kocurek@gmail.com']

  spec.summary       = 'uikit-rails is a SASS-powered version of uikit, ready to drop right into your SASS powered applications.'
  spec.homepage      = 'https://github.com/thinkairship/uikit-rails'
  spec.license       = 'MIT'

  spec.add_runtime_dependency 'sass', '>= 3.3.4'

  spec.files = `git ls-files`.split("\n")
end
