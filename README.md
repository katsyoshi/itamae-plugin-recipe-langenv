# Itamae::Plugin::Recipe::Langenv

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/itamae/plugin/recipe/langenv`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-langenv', github: 'katsyoshi/itamae-plugin-recipe-langenv'
```

And then execute:

    $ bundle

## Usage

If you install perl and python, you configure file as json:
```json
{
  "pyenv" : {
    "scheme" : "https",
    "versions" : ["2.7.5", "3.4.3"],
    "global" : "3.4.3"
  }
  "plenv" : {
    "scheme" : "https",
    "versions" : ["5.20.2", "5.22.0"],
    "global" : "5.22.0"
  }
}
```

You write itamae recipe:
```ruby
include_recipe 'langenv::plenv'
include_recipe 'langenv::pyenv'
include_recipe 'langenv::rbenv'
```

You execute following script:
```console
$ bundle exec itamae local recipe.rb -j langenv.json
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/katsyoshi/itamae-plugin-recipe-langenv. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

