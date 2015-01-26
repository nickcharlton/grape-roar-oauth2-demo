# grape-roar-demo

[![Build Status](https://travis-ci.org/nickcharlton/grape-roar-demo.svg?branch=master)](https://travis-ci.org/nickcharlton/grape-roar-demo)
[![Code Climate](https://codeclimate.com/github/nickcharlton/grape-roar-demo/badges/gpa.svg)](https://codeclimate.com/github/nickcharlton/grape-roar-demo)
[![Test Coverage](https://codeclimate.com/github/nickcharlton/grape-roar-demo/badges/coverage.svg)](https://codeclimate.com/github/nickcharlton/grape-roar-demo)
[![Dependency Status](https://gemnasium.com/nickcharlton/grape-roar-demo.svg)](https://gemnasium.com/nickcharlton/grape-roar-demo)

This is an example using [Grape][] & [Roar][], hosted inside a [Rails][]
application to demonstrate building out a basic API. It expose two models,
`User` and `Organisation`, with routes hosted at the root (i.e.: `/users`).

### `oauth2`

There's a similar project to this which adds OAuth 2 support. It's based on the
original codebase here, but was split to keep things clearer. It implements
authentication using Doorkeeper and a couple of other gems.

It also adds to the User model to (and a controller) to support basic
email/password authentication in the browser. After that, the usual OAuth 2
routes are implemented.

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
