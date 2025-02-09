# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :spotify_data_viz,
  ecto_repos: [SpotifyDataViz.Repo]

# Configures the endpoint
config :spotify_data_viz, SpotifyDataVizWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7gSJzwE8hAX7KAuBo/X3nu9/jAxmEO3p3NhKTuDnpfgJoesLRSgIUbbCJKMQwnp3",
  render_errors: [view: SpotifyDataVizWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SpotifyDataViz.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
import_config "spotify.exs"
import_config "secret.exs"
