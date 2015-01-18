# grape-roar-demo

[![Build Status](https://travis-ci.org/nickcharlton/grape-roar-demo.svg?branch=master)](https://travis-ci.org/nickcharlton/grape-roar-demo)
[![Code Climate](https://codeclimate.com/github/nickcharlton/grape-roar-demo/badges/gpa.svg)](https://codeclimate.com/github/nickcharlton/grape-roar-demo)
[![Test Coverage](https://codeclimate.com/github/nickcharlton/grape-roar-demo/badges/coverage.svg)](https://codeclimate.com/github/nickcharlton/grape-roar-demo)

This is an example using [Grape][] & [Roar][], hosted inside a [Rails][]
application to demonstrate building out a basic API. It expose two models,
`User` and `Organisation`, with routes hosted at the root (i.e.: `/users`).

## Usage

It's loaded just like a typical [Rails][] application:

```
bundle install
bundle exec rails server
```

You can then access it at `http://localhost:3000`.

## Testing

Tests are implemented using [RSpec][].

```
bundle exec rake spec
```

## Author

Copyright (c) 2015 Nick Charlton <nick@nickcharlton.net>.

[Grape]: https://github.com/intridea/grape
[Roar]: https://github.com/apotonick/roar
[Rails]: http://guides.rubyonrails.org/
[RSpec]: http://rspec.info
