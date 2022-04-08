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
  "some_dynamic_result: #{Time.now}" # your dynamic code
end
```

and then:

```shell
# run your puma in your favorite mode
bundle exec puma -t 8:32 -w 3
```

and then (check your process names):

```shell
puma 5.6.4 (tcp://0.0.0.0:9292) [some_dynamic_result: 2022-04-08 03:01:04 +0300] # <--- dynamic process name
puma: cluster worker 2: 38624 [some_dynamic_result: 2022-04-08 03:02:50 +0300] # <--- dynamic process name
puma: cluster worker 1: 38624 [some_dynamic_result: 2022-04-08 03:02:50 +0300] # <--- dynamic process name
puma: cluster worker 0: 38624 [some_dynamic_result: 2022-04-08 03:02:50 +0300] # <--- dynamic process name
```

and then (run phase-restart and check recalculated process names with your dynamic tag):

```shell
puma 5.6.4 (tcp://0.0.0.0:9292) [some_dynamic_result: 2022-04-08 03:01:04 +0300] # <--- dynamic time has bin changed
puma: cluster worker 2: 38624 [some_dynamic_result: 2022-04-08 03:03:25 +0300] # <--- dynamic time has bin changed
puma: cluster worker 1: 38624 [some_dynamic_result: 2022-04-08 03:03:25 +0300] # <--- dynamic time has bin changed
puma: cluster worker 0: 38624 [some_dynamic_result: 2022-04-08 03:03:25 +0300] # <--- dynamic time has bin changed
````

Profit!

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

