# AsanaRb

AsanaRb is a simple Ruby wrapper for Asana API.

## Installation

Add this line to your application's Gemfile:

    gem 'asana_rb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install asana_rb

## Usage

### Initalization

    AsanaRb::Base.api_key 'your api key'

### Task Creation

    AsanaRb::Task.new('text', <workspace-id>, <assignee-email>)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
