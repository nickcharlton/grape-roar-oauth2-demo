# grape-roar-oauth2-demo

[![Build Status](https://travis-ci.org/nickcharlton/grape-roar-oauth2-demo.svg?branch=master)](https://travis-ci.org/nickcharlton/grape-roar-oauth2-demo)
[![Code Climate](https://codeclimate.com/github/nickcharlton/grape-roar-oauth2-demo/badges/gpa.svg)](https://codeclimate.com/github/nickcharlton/grape-roar-oauth2-demo)
[![Test Coverage](https://codeclimate.com/github/nickcharlton/grape-roar-oauth2-demo/badges/coverage.svg)](https://codeclimate.com/github/nickcharlton/grape-roar-oauth2-demo)
[![Dependency Status](https://gemnasium.com/nickcharlton/grape-roar-oauth2-demo.svg)](https://gemnasium.com/nickcharlton/grape-roar-oauth2-demo)

This is an example using [Grape][] & [Roar][], hosted inside a [Rails][]
application to demonstrate building out a basic API. It expose two models,
`User` and `Organisation`, with routes hosted at the root (i.e.: `/users`).

This version is a [fork of the original][original] which adds authentication
support with [Devise][], [Doorkeeper][] and [WineBouncer][].

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
[original]: https://github.com/nickcharlton/grape-roar-demo
[Devise]: https://github.com/plataformatec/devise
[Doorkeeper]: https://github.com/doorkeeper-gem/doorkeeper
[WineBouncer]: https://github.com/antek-drzewiecki/wine_bouncer
[RSpec]: http://rspec.info
