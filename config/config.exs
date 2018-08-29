# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tanks,
  ecto_repos: [Tanks.Repo]

# Configures the endpoint
config :tanks, TanksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VfQC7urWBInuemSSWFfKXKBy/IwJA+7vQdUoACF6G7LpeSj4MGd2i2q0Qi0A3gC7",
  render_errors: [view: TanksWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tanks.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
