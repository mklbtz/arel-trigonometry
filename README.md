# Arel::Trigonometry [![Build Status](https://secure.travis-ci.org/jswanner/arel-trigonometry.png?branch=master)](https://travis-ci.org/jswanner/arel-trigonometry)

Provides trigonometry functions, implemented with Arel.

## Installation

Add this line to your application's Gemfile:

    gem 'arel-trigonometry'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arel-trigonometry

## Usage

``` ruby
# require 'arel/trigonometry/mysql' # for only MySQL support
# require 'arel/trigonometry/postgresql' # for only PostgreSQL support
require 'arel/trigonometry'

angles = Arel::Table.new(:angles)
angles.project(Arel::Nodes::Radians.new(angles[:a]))
# => SELECT RADIANS("angles"."a") FROM "angles";
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
