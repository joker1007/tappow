# Tappow = tapp + pow
[![Build Status](https://travis-ci.org/joker1007/tappow.svg?branch=master)](https://travis-ci.org/joker1007/tappow)

When use Pow for development, it is difficult to see stdout output.

tappow add tapp printers that use logger interface, and add `Object#tappow` method.
`Object#tappow` can have different default printer with tapp's one

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tappow'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tappow

## Usage

ex.
```ruby
Tappow.logger = Rails.logger
Tappow.log_level = :info                 # default :debug
Tappow.default_printer = :logger_awesome # default :logger_pretty
```

```ruby
"foo".tappow
```

### printer
| key             | desc                   |
| ----            | ----                   |
| :logger_pretty  | output pretty_inspect  |
| :logger_awesome | output awesome_inspect |
| :logger_string  | output to_s            |

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment. 

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/joker1007/tappow/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
