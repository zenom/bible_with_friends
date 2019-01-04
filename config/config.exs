# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bible_with_friends,
  ecto_repos: [BibleWithFriends.Repo]

# Configures the endpoint
config :bible_with_friends, BibleWithFriendsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NtgtBb5A9IMsY0s+PXaLmZM5vacNAphJk7C7A8o0SCKvQ9QsyfmnSYobxSPusK0i",
  render_errors: [view: BibleWithFriendsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BibleWithFriends.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :digital_bible, api_key: System.get_env("DBP_API_KEY"), api_version: 2
