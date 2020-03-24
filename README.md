# RuboCop ErgoServ

ErgoServ shared configs for RuboCop.

## Installation

Add this line to your application's `Gemfile`:

```ruby
group :development, :test  do
  # version released to RubyGems (most probably outdated)
  gem 'rubocop-ergoserv', require: false

  # or latest version from the repository (recommended)
  gem 'rubocop-ergoserv',
    git: 'https://github.com/ergoserv/rubocop-ergoserv',
    require: false
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubocop-ergoserv

## Usage

Update your `.rubocop.yml` file with the following directives:

```yaml
inherit_gem:
  rubocop-ergoserv:
    - config/default.yml
```

Now, run:

    $ bundle exec rubocop

*Note:* You may have to use `bundle exec` to make `inherit_gem` directive work correctly.

You do not need to include `rubocop` directly in your application's dependencies. `rubocop-ergoserv` will include a required versions of `rubocop`, `rubocop-performance`, `rubocop-rails`, `rubocop-rake` and `rubocop-rspec`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ergoserv/rubocop-ergoserv. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rubocop::ErgoServ project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rubocop-ergoserv/blob/master/CODE_OF_CONDUCT.md).

-------------------------------------------------------------------------------

[![alt text](https://raw.githubusercontent.com/ergoserv/rubocop-ergoserv/master/assets/ErgoServ_horizontalColor@sign+text+bg.png "ErgoServ - Web and Mobile Development Company")](https://www.ergoserv.com)

This gem was created and is maintained by [ErgoServ](https://www.ergoserv.com).

If you like what you see and would like to hire us or join us, [get in touch](https://www.ergoserv.com)!
