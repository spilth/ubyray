[![Build Status](https://secure.travis-ci.org/spilth/ubyray.png?branch=master)](http://travis-ci.org/spilth/ubyray) [![Code Climate](https://codeclimate.com/github/spilth/ubyray.png)](https://codeclimate.com/github/spilth/ubyray) [![Coverage Status](https://coveralls.io/repos/spilth/ubyray/badge.png)](https://coveralls.io/r/spilth/ubyray)

# [Ubyray](http://spilth.org/ubyray/)

A Ruby library for translating English to Pig Latin.

This is also a project for practicing Ruby programming and getting familiar with a number of processes and tools used in the Ruby ecosystem, such as:

- [Bundler](http://bundler.io)
- [Rake](http://rake.rubyforge.org)
- [RSpec](http://rspec.info)
- [Cucumber](http://cukes.info)
- [Guard](http://guardgem.org)
- [TravisCI](https://travis-ci.org)
- [Code Climate](https://codeclimate.com)
- [RubyGems](http://rubygems.org)
- [Ruby Doc](http://ruby-doc.org)
- [Yard](http://yardoc.org)
- [Relish](https://www.relishapp.com)

## Installation

Add this line to your application's Gemfile:

    gem 'ubyray'

And then execute:

    $ bundle

Or install it manually with:

    $ gem install ubyray

## Usage

    require 'ubyray'
    word = 'Ruby'
    translated = Ubyray.translate(word)
    puts "The word '#{word}' in Pig Latin is '#{translated}'."

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Ubyray on...

- [GitHub](https://github.com/spilth/ubyray/)
- [Travis CI](https://travis-ci.org/spilth/ubyray/)
- [Code Climate](https://codeclimate.com/github/spilth/ubyray/)
- [Ruby Doc](http://www.rubydoc.org/github/spilth/ubyray)
- [Relish](http://relishapp.com/spilth/ubyray/)
- [RubyGems](https://rubygems.org/gems/ubyray/)

