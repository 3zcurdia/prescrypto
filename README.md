# Prescrypto

Prescrypto API wrapper gem, it encapsulate the logic to interact with prescrypto apis.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'prescrypto', github: 'diagnostikare/prescrypto'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install prescrypto

## Usage

Configure api base url

```
Prescrypto.configure do |config|
  config.api_url = ENV['PRESCRYPTO_API_URL']
end
```

Create a rest client
```
client = Prescrypto.rest(api_token)
```

Use the rest client

```
client.list_medications
client.show_medication(982)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/prescrypto. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/prescrypto/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Prescrypto project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/prescrypto/blob/master/CODE_OF_CONDUCT.md).
