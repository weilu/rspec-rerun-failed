# RspecRerun

Rerun the previously failed specs

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-rerun'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-rerun

## Usage

First load the rake task:
For example, in a rails app under lib/tasks, create a file `rspec-rerun.rake` with

    load "tasks/rspec.rake"

Then invoke the rake task:

    rake spec:rerun

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
