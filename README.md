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
require 'pinterest_share'
options = {
  url: 'http://red-object.net',
  media: 'http://a1.twimg.com/profile_images/1288708278/2010_tron_legacy-wide_normal.jpg'
}
PinterestShare::Generation.new(options).to_s
=> "http://pinterest.com/pin/create/button/?url=http%3A%2F%2Fred-object.net&media=http%3A%2F%2Fa1.twimg.com%2Fprofile_images%2F1288708278%2F2010_tron_legacy-wide_normal.jpg"
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
