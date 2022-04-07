# puma_dynamic_tags &middot; <a target="_blank" href="https://github.com/Cado-Labs"><img src="https://github.com/Cado-Labs/cado-labs-logos/raw/main/cado_labs_badge.svg" alt="Supported by Cado Labs" style="max-width: 100%; height: 20px"></a> &middot; [![Gem Version](https://badge.fury.io/rb/puma_dynamic_tags.svg)](https://badge.fury.io/rb/puma_dynamic_tags)

## Installation

```shell
gem install puma_dynamic_tags
```

or:

```ruby
# Gemfile
gem "puma_dynamic_tags"
```

```shell
bundle install
```

## Usage

```ruby
# config/puma.rb
plugin "puma_dynamic_tags"

tag do
  "some_dynamic_result" # your dynamic code
end
```

and then:

```shell
puma
```

and then:

```shell
pas aux | grep puma
```

## Contributing

- Fork it ( https://github.com/0exp/puma_dynamic_tags )
- Create your feature branch (`git checkout -b feature/my-new-feature`)
- Commit your changes (`git commit -am '[feature_context] Add some feature'`)
- Push to the branch (`git push origin feature/my-new-feature`)
- Create new Pull Request

## License

Released under MIT License.

## Supporting

<a href="https://github.com/Cado-Labs">
  <img src="https://github.com/Cado-Labs/cado-labs-logos/blob/main/cado_labs_logo.png" alt="Supported by Cado Labs" />
</a>

## Authors

[Rustam Ibragimov](https://github.com/0exp)

