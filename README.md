# Pinterest Share

Create a share url for Pinterest.

## Pinterest documentation

[Pin It Button for Web Sites](http://pinterest.com/about/goodies/)

## Installation

Add this line to your application's Gemfile:

    gem 'pinterest-share'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pinterest-share

## Usage

```ruby
Pinterest::Generation.new(options).to_s
```

## Test

```shell
$ guard
```

## Support

At the moment it only supports Ruby >= 1.9.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
