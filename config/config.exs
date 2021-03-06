# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ex_poll,
  ecto_repos: [ExPoll.Repo]

# Configures the endpoint
config :ex_poll, ExPollWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "x2dVSuy2/YkKRkfjK6Id8gbGa9eySgyN5Y8d2HhvGwhnXE2booxURnf3B1P2bcGa",
  render_errors: [view: ExPollWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ExPoll.PubSub,
  live_view: [signing_salt: "50/QWuGI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
