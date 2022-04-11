# puma_dynamic_tags &middot; <a target="_blank" href="https://github.com/Cado-Labs"><img src="https://github.com/Cado-Labs/cado-labs-logos/raw/main/cado_labs_badge.svg" alt="Supported by Cado Labs" style="max-width: 100%; height: 20px"></a> &middot; [![Gem Version](https://badge.fury.io/rb/puma_dynamic_tags.svg)](https://badge.fury.io/rb/puma_dynamic_tags)

Puma plugin that allows you to define dynamically calculated process titles (`tag` option) for your workers inside your `puma`'s config.

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

Setup your puma application:

```ruby
# config.ru

# (Sinatra example)
require "sinatra"
run Sinatra::Application
```

Enable `dynamic_tags` plugin and configure dynamic `tag` option:

```ruby
# config/puma.rb
plugin "dynamic_tags"

# and now you can use dynamic tags:

tag do
  "some_dynamic_result: #{Time.now}" # your dynamic code
end
```

and then:

```shell
# run your puma in your favorite mode
bundle exec puma -t 8:32 -w 3
```

and then (check your process titles):

```shell
puma 5.6.4 (tcp://0.0.0.0:9292) [some_dynamic_result: 2022-04-08 03:01:04 +0300] # (main laster process)
puma: cluster worker 2: 38624 [some_dynamic_result: 2022-04-08 03:02:50 +0300] # <--- dynamic process title
puma: cluster worker 1: 38624 [some_dynamic_result: 2022-04-08 03:02:50 +0300] # <--- dynamic process title
puma: cluster worker 0: 38624 [some_dynamic_result: 2022-04-08 03:02:50 +0300] # <--- dynamic process title
```

and then (run phase-restart in order to make sure that your workers have a new titles):

```shell
puma 5.6.4 (tcp://0.0.0.0:9292) [some_dynamic_result: 2022-04-08 03:01:04 +0300] # (main laster process)
puma: cluster worker 2: 38624 [some_dynamic_result: 2022-04-08 03:03:25 +0300] # <--- each title has been recalculated
puma: cluster worker 1: 38624 [some_dynamic_result: 2022-04-08 03:03:25 +0300] # <--- each title has been recalculated
puma: cluster worker 0: 38624 [some_dynamic_result: 2022-04-08 03:03:25 +0300] # <--- each title has been recalculated
````

**Profit!**

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

