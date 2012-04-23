# AsanaRb

AsanaRb is a simple, lightweight Ruby wrapper for Asana API.

*not yet released as a gem*

## Installation

Add this line to your application's Gemfile:

    gem 'asana_rb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install asana_rb

## Usage

### Initalization

    AsanaRb.configure { |c| c.api_key 'your api key' }

### Task 

    # Create
    AsanaRb::Task.create('text', '<workspace-id>', '<assignee-email>')

    # List tasks from specified project 
    AsanaRb::Task.list({ project: '<id>' })

    # List tasks from specified workspace 
    AsanaRb::Task.list({ workspace: '<id>' })

    # Mark specified task as done
    AsanaRb::Task.done('<id>')


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
