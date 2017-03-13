# Retsly Gem

A convenient Ruby wrapper for the [Rets.ly API](http://rets.ly).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'retsly'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install retsly

## Usage

### Getting started

Let's set up a basic Retsly client. In order to connect, you need to specify your `access_token` and your `vendor` string.

```ruby
Retsly.access_token = "your-access-token"
Retsly.vendor = "vendor-string"
```

Right now, you can only access all listings, like so:

```
Retsly::Listings.retrieve
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jessmartin/retsly-ruby.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

