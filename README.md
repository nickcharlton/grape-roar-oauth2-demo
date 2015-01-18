# grape-roar-demo

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
