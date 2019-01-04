use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :bible_with_friends, BibleWithFriendsWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :bible_with_friends, BibleWithFriends.Repo,
  username: "postgres",
  password: "postgres",
  database: "bible_with_friends_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
