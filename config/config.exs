# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :helipad,
  ecto_repos: [Helipad.Repo]

# Configures the endpoint
config :helipad, HelipadWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0PBXfj6wXq0gCnevE4FLIX2scd3F3CF80aW0a/XA2utt3wTDn/2z75ZBiFtsvkKl",
  render_errors: [view: HelipadWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Helipad.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
