# DoublebyteCharactify

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'doublebyte_charactify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install doublebyte_charactify

## Usage

- Make initializers file
config\initializers\doublebyte_charactify.rb

```ruby
DoublebyteCharactify.setup do |content, tags|
  zenkaku = DoublebyteCharactify::Converter.new()
  zenkaku.convert(content, tags)
end
```

- toot by mastodon

```text
hankaku to zenkaku #全角芸
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wakin-/doublebyte_charactify.
