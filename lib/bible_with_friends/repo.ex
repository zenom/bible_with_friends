defmodule BibleWithFriends.Repo do
  use Ecto.Repo,
    otp_app: :bible_with_friends,
    adapter: Ecto.Adapters.Postgres
end
