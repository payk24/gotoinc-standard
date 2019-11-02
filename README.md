# Gotoinc::Standard

Rubocop configuration to be used in GoToInc projects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gotoinc-standard'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gotoinc-standard

## Usage

Put this into your Rubocop configration file

```yml
inherit_gem:
  gotoinc-standard: config/default.yml
```

Also if you don't use the last ruby or rails version, you should add your current versions to Rubocop configration file 

```yml
AllCops:
  TargetRubyVersion: 2.6.5
  TargetRailsVersion: 6.0
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/payk24/gotoinc-standard. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Gotoinc::Standard project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/gotoinc-standard/blob/master/CODE_OF_CONDUCT.md).
