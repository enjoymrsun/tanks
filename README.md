# Tanks

## Preparation
To get phoenix project working on your machine:

  * Install Elixir and Erlang [`Elixir Install Page`](https://elixir-lang.org/install.html)
  * Install Phoenix Framework [`Phoenix Install Page`](https://hexdocs.pm/phoenix/installation.html)
  * Install Node.js [`Node.js Install Page`](https://github.com/nodesource/distributions)
  * Install PostgreSQL `sudo apt-get install postgresql`

## Play
To start the tanks server:

  * Install dependencies with `tanks$ mix deps.get`
  * Create and migrate your database with `tanks$ mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `tanks$ cd assets && npm install`
  * Start Phoenix endpoint with `tanks$ mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
