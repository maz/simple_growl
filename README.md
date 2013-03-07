# SimpleGrowl

This gem provides a very simple and straightforward interface to Growl (for Macs) through the `osascript` command which comes pre-installed on Macs.

## Installation

Add this line to your application's Gemfile:

    gem 'simple_growl'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_growl

## Usage

The usage is really _simple_

    require 'simple_growl'
    SimpleGrowl::notify('Title', 'Message')

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
